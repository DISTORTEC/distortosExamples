/**
 * \file
 * \brief staticThreadBlinker example application
 *
 * \author Copyright (C) 2016 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
 *
 * \par License
 * This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
 * distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

#include "distortos/distortosConfiguration.h"

#if defined(CONFIG_BOARD_LEDS_ENABLE) && CONFIG_BOARD_TOTAL_LEDS >= 1

#include "distortos/board/leds.hpp"

#include "distortos/chip/ChipOutputPin.hpp"

#endif	// defined(CONFIG_BOARD_LEDS_ENABLE) && CONFIG_BOARD_TOTAL_LEDS >= 1

#include "distortos/StaticThread.hpp"
#include "distortos/ThisThread.hpp"

namespace
{

/*---------------------------------------------------------------------------------------------------------------------+
| local functions
+---------------------------------------------------------------------------------------------------------------------*/

#if defined(CONFIG_BOARD_LEDS_ENABLE) && CONFIG_BOARD_TOTAL_LEDS >= 1

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

#endif	// defined(CONFIG_BOARD_LEDS_ENABLE) && CONFIG_BOARD_TOTAL_LEDS >= 1

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
 * \brief Main code block of staticThreadBlinker application
 *
 * This example application tries to demonstrate the most basic aspects of static threads:
 * - creating and starting them,
 * - passing arguments to thread's function by reference and by value,
 * - joining them.
 *
 * If the configured board has no LEDs or if they are not enabled in the configuration, only one dummy thread is
 * created - it "blinks" a boolean variable instead of a real LED. Otherwise up to four additional threads are created
 * (but no more than the number of LEDs on the board - CONFIG_BOARD_TOTAL_LEDS) - each one blinks its own LED (which was
 * passed to the thread's function by reference) with provided period (passed by value). The periods of blinking are
 * slightly different for each thread, so if there are multiple LEDs they are not in sync with each other. The periods
 * are actually prime numbers, so they create very long "global" period (in which the whole pattern repeats).
 *
 * Even though all created threads never terminate (their functions have infinite loops and never return), main thread
 * calls Thread::join() for each of them anyway. This is a good and safe practice, which also happens to be the easiest
 * way to suspend main thread in this example application.
 *
 * \return doesn't return
 */

int main()
{
	bool variable {};
	// create and immediately start static thread with 1024 bytes of stack, low priority (1), variableBlinkerFunction()
	// will get variable by reference and period by value
	auto variableBlinkerThread = distortos::makeAndStartStaticThread<1024>(1, variableBlinkerFunction,
			std::ref(variable), std::chrono::milliseconds{401});

#if defined(CONFIG_BOARD_LEDS_ENABLE) && CONFIG_BOARD_TOTAL_LEDS >= 1

	// create and immediately start static thread with 1024 bytes of stack, low priority (1), ledBlinkerFunction() will
	// get its own LED by reference and period by value
	auto ledBlinkerThread0 = distortos::makeAndStartStaticThread<1024>(1, ledBlinkerFunction,
			std::ref(distortos::board::leds[0]), std::chrono::milliseconds{397});

#	if CONFIG_BOARD_TOTAL_LEDS >= 2

	auto ledBlinkerThread1 = distortos::makeAndStartStaticThread<1024>(1, ledBlinkerFunction,
			std::ref(distortos::board::leds[1]), std::chrono::milliseconds{389});

#		if CONFIG_BOARD_TOTAL_LEDS >= 3

	auto ledBlinkerThread2 = distortos::makeAndStartStaticThread<1024>(1, ledBlinkerFunction,
			std::ref(distortos::board::leds[2]), std::chrono::milliseconds{383});

#			if CONFIG_BOARD_TOTAL_LEDS >= 4

	auto ledBlinkerThread3 = distortos::makeAndStartStaticThread<1024>(1, ledBlinkerFunction,
			std::ref(distortos::board::leds[3]), std::chrono::milliseconds{379});

	ledBlinkerThread3.join();

#			endif	// CONFIG_BOARD_TOTAL_LEDS >= 4

	ledBlinkerThread2.join();

#		endif	// CONFIG_BOARD_TOTAL_LEDS >= 3

	ledBlinkerThread1.join();

#	endif	// CONFIG_BOARD_TOTAL_LEDS >= 2

	ledBlinkerThread0.join();

#endif	// defined(CONFIG_BOARD_LEDS_ENABLE) && CONFIG_BOARD_TOTAL_LEDS >= 1

	variableBlinkerThread.join();

	return 0;
}
