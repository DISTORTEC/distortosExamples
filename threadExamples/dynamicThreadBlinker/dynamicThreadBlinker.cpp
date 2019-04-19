/**
 * \file
 * \brief dynamicThreadBlinker example application
 *
 * \author Copyright (C) 2016-2019 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
 *
 * \par License
 * This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
 * distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

#include "distortos/distortosConfiguration.h"

#if defined(DISTORTOS_BOARD_LEDS_ENABLE)

#include "distortos/board/leds.hpp"

#include "distortos/chip/ChipOutputPin.hpp"

#endif	// defined(DISTORTOS_BOARD_LEDS_ENABLE)

#include "distortos/DynamicThread.hpp"
#include "distortos/ThisThread.hpp"

namespace
{

/*---------------------------------------------------------------------------------------------------------------------+
| local functions
+---------------------------------------------------------------------------------------------------------------------*/

#if defined(DISTORTOS_BOARD_LEDS_ENABLE)

/**
 * \brief LED blinking function
 *
 * Constantly toggles state of \a led and waits for half of \a periodMs.
 *
 * \param [in] led is a reference to distortos::devices::OutputPin object which will be toggled by this function
 * \param [in] periodMs is a full (on -> off -> on) period of toggling, milliseconds
 */

void ledBlinkerFunction(distortos::devices::OutputPin& led, const std::chrono::milliseconds periodMs)
{
	while (1)
	{
		led.set(!led.get());	// invert state of LED
		distortos::ThisThread::sleepFor(periodMs / 2);
	}
}

#endif	// defined(DISTORTOS_BOARD_LEDS_ENABLE)

/**
 * \brief Boolean variable "blinking" function
 *
 * Constantly toggles value of \a variable and waits for half of \a periodMs. This function is meant as a demonstration
 * for configuration which either has no LEDs or doesn't enable them.
 *
 * \param [in] variable is a reference to bool variable which will be toggled by this function
 * \param [in] periodMs is a full (true -> false -> true) period of toggling, milliseconds
 */

void variableBlinkerFunction(bool& variable, const std::chrono::milliseconds periodMs)
{
	while (1)
	{
		variable = !variable;	// invert state of variable
		distortos::ThisThread::sleepFor(periodMs / 2);
	}
}

}	// namespace

/*---------------------------------------------------------------------------------------------------------------------+
| global functions
+---------------------------------------------------------------------------------------------------------------------*/

/**
 * \brief Main code block of dynamicThreadBlinker application
 *
 * This example application tries to demonstrate the most basic (and one more advanced) aspects of dynamic threads:
 * - creating and starting them,
 * - passing arguments to thread's function by reference and by value,
 * - detaching them.
 *
 * If the configured board has no LEDs or if they are not enabled in the configuration, only one dummy thread is
 * created - it "blinks" a boolean variable instead of a real LED. Otherwise up to four additional threads are created
 * (but no more than the number of LEDs on the board - distortos::board::ledsCount) - each one blinks its own LED (which
 * was passed to the thread's function by reference) with provided period (passed by value). The periods of blinking are
 * slightly different for each thread, so if there are multiple LEDs they are not in sync with each other. The periods
 * are actually prime numbers, so they create very long "global" period (in which the whole pattern repeats).
 *
 * As all created threads never terminate (their functions have infinite loops and never return) and main thread has no
 * interest in synchronizing with them, they are immediately detached right after being constructed and started. Main
 * thread doesn't have anything to do after that, so it just sleeps for long periods in a loop.
 *
 * \return doesn't return
 */

int main()
{
	bool variable {};
	// create, immediately start and immediately detach dynamic thread with 1024 bytes of stack, low priority (1),
	// variableBlinkerFunction() will get variable by reference and period by value
	distortos::makeAndStartDynamicThread({1024, 1}, variableBlinkerFunction, std::ref(variable),
			std::chrono::milliseconds{401}).detach();

#if defined(DISTORTOS_BOARD_LEDS_ENABLE)

	static const std::array<std::chrono::milliseconds, 4> periods
	{
			std::chrono::milliseconds{397},
			std::chrono::milliseconds{389},
			std::chrono::milliseconds{383},
			std::chrono::milliseconds{379},
	};

	constexpr size_t threadsCount {periods.size() < distortos::board::ledsCount ?
			periods.size() : distortos::board::ledsCount};
	// create, immediately start and immediately detach dynamic thread with 1024 bytes of stack, low priority (1),
	// ledBlinkerFunction() will get its own LED by reference and period by value
	for (size_t i {}; i < threadsCount; ++i)
		distortos::makeAndStartDynamicThread({1024, 1}, ledBlinkerFunction, std::ref(distortos::board::leds[i]),
				periods[i]).detach();

#endif	// defined(DISTORTOS_BOARD_LEDS_ENABLE)

	while (1)
		distortos::ThisThread::sleepFor(std::chrono::hours{1});

	return 0;
}
