/**
 * \file
 * \brief staticSoftwareTimerBlinker example application
 *
 * \author Copyright (C) 2016-2017 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
 *
 * \par License
 * This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
 * distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

#include "distortos/board/leds.hpp"

#include "distortos/chip/ChipOutputPin.hpp"

#include "distortos/ThisThread.hpp"
#include "distortos/StaticSoftwareTimer.hpp"

/*---------------------------------------------------------------------------------------------------------------------+
| global functions
+---------------------------------------------------------------------------------------------------------------------*/

/**
 * \brief Main code block of staticSoftwareTimerBlinker application
 *
 * This example application tries to demonstrate the most basic aspects of static software timers:
 * - creating and starting them,
 * - passing arguments to timers's function by reference and by value.
 *
 * Up to four software timers are created (but no more than the number of LEDs on the board -
 * DISTORTOS_BOARD_LEDS_COUNT) - each configured to switch its own LED (which was passed to the timer's function by
 * reference) off (the "off" state is passed by value). Then - in an endless loop - main thread turns all LEDs on,
 * starts all created timers (with different durations) and sleeps for 1 second.
 *
 * \return doesn't return
 */

int main()
{
#if DISTORTOS_BOARD_LEDS_COUNT >= 1

	auto ledOffTimer0 = distortos::makeStaticSoftwareTimer(&distortos::devices::OutputPin::set,
			std::ref(distortos::board::leds[0]), false);

#endif	// DISTORTOS_BOARD_LEDS_COUNT >= 1
#if DISTORTOS_BOARD_LEDS_COUNT >= 2

	auto ledOffTimer1 = distortos::makeStaticSoftwareTimer(&distortos::devices::OutputPin::set,
			std::ref(distortos::board::leds[1]), false);

#endif	// DISTORTOS_BOARD_LEDS_COUNT >= 2
#if DISTORTOS_BOARD_LEDS_COUNT >= 3

	auto ledOffTimer2 = distortos::makeStaticSoftwareTimer(&distortos::devices::OutputPin::set,
			std::ref(distortos::board::leds[2]), false);

#endif	// DISTORTOS_BOARD_LEDS_COUNT >= 3
#if DISTORTOS_BOARD_LEDS_COUNT >= 4

	auto ledOffTimer3 = distortos::makeStaticSoftwareTimer(&distortos::devices::OutputPin::set,
			std::ref(distortos::board::leds[3]), false);

#endif	// DISTORTOS_BOARD_LEDS_COUNT >= 4

	while (1)
	{
		for (auto& led : distortos::board::leds)
			led.set(true);

#if DISTORTOS_BOARD_LEDS_COUNT >= 1

		ledOffTimer0.start(std::chrono::milliseconds{500});

#endif	// DISTORTOS_BOARD_LEDS_COUNT >= 1
#if DISTORTOS_BOARD_LEDS_COUNT >= 2

		ledOffTimer1.start(std::chrono::milliseconds{550});

#endif	// DISTORTOS_BOARD_LEDS_COUNT >= 2
#if DISTORTOS_BOARD_LEDS_COUNT >= 3

		ledOffTimer2.start(std::chrono::milliseconds{600});

#endif	// DISTORTOS_BOARD_LEDS_COUNT >= 3
#if DISTORTOS_BOARD_LEDS_COUNT >= 4

		ledOffTimer3.start(std::chrono::milliseconds{650});

#endif	// DISTORTOS_BOARD_LEDS_COUNT >= 4

		distortos::ThisThread::sleepFor(std::chrono::seconds{1});
	}

	return 0;
}
