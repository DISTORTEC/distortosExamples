Change Log
==========

All notable changes to this project will be documented in this file.

[Unreleased](https://github.com/DISTORTEC/distortosExamples/compare/v20180701...HEAD)
-------------------------------------------------------------------------------------

### Added

- Configurations for [32F072BDISCOVERY](https://www.st.com/en/evaluation-tools/32f072bdiscovery.html) board with
*STM32F0* chip.

### Changed

- Implemended full support for configuring and building with *CMake*. The new *CMake* workflow does not need *Kconfig*
or any shell tools - just *CMake* (version 3.7 or later), build tool (it is recommended to use *Ninja*) and
*arm-none-eabi bleeding-edge-toolchain* (*GCC* version 5 or later). Check `README.md` for more details about usage.

### Removed

- Removed support for configuring with *Kconfig* and building with *make*. Both of these tasks are now handled by
*CMake*.

[20180701](https://github.com/DISTORTEC/distortosExamples/compare/v20170914...v20180701) - 2018-07-01
-----------------------------------------------------------------------------------------------------

### Added

- Configurations for [NUCLEO-L432KC](http://www.st.com/en/evaluation-tools/nucleo-l432kc.html) and
[NUCLEO-L476RG](http://www.st.com/en/evaluation-tools/nucleo-l476rg.html) boards with *STM32L4* chips.
- Configuration for [NUCLEO-F446RE](http://www.st.com/en/evaluation-tools/nucleo-f446re.html) board with *STM32F4* chip.
- *CMake*-based build system. At this moment all configuration is still done with *Kconfig* - *CMake* loads selected
`distortosConfiguration.mk` and only deals with compilation. Typical use case involves following steps: select
configuration with `make configure CONFIG_PATH=...`, create output folder of your choice (`mkdir output`) and enter it
(`cd output`), configure compilation with
`cmake .. -DCMAKE_TOOLCHAIN_FILE=../distortos/cmake/Toolchain-arm-none-eabi.cmake` and finally start the build with
`make`. You can obviously use other
[*CMake* generators](https://cmake.org/cmake/help/latest/manual/cmake-generators.7.html), e.g. *Ninja*, *Eclipse CDT4*
project, ... *CMake*-based build system will only support configurations with proper board, i.e. "Custom board" choice
for "Board" in *Kconfig* is not supported.

### Changed

- Replace all uses of `distortos::board::totalLeds` constant and `DISTORTOS_BOARD_TOTAL_LEDS` macro with
`distortos::board::ledsCount` and `DISTORTOS_BOARD_LEDS_COUNT`.

### Removed

- Removed *tup* build infrastructure - *tup* is no longer supported for building *distortos*.

[20170914](https://github.com/DISTORTEC/distortosExamples/compare/v20170311...v20170914) - 2017-09-14
-----------------------------------------------------------------------------------------------------

### Added

- Configuration for [NUCLEO-L073RZ](http://www.st.com/en/evaluation-tools/nucleo-l073rz.html) board with *STM32L0* chip.
- Configuration for [32F769IDISCOVERY](http://www.st.com/en/evaluation-tools/32f769idiscovery.html) board with *STM32F7*
chip.

[20170311](https://github.com/DISTORTEC/distortosExamples/compare/v20161124...v20170311) - 2017-03-11
-----------------------------------------------------------------------------------------------------

### Added

- Configuration for [32F746GDISCOVERY](http://www.st.com/en/evaluation-tools/32f746gdiscovery.html) board with *STM32F7*
chip.

### Changed

- Enabled function context checking and all stack overflow checks in configuration files.
- Changed number of queued signals and signal actions for `main()` thread to 8 in all `distortosConfiguration.mk` files.
- Reduced size of stack for interrupts to 1kB in all configurations.
- Replace all uses of `CONFIG_BOARD_TOTAL_LEDS` macro with `DISTORTOS_BOARD_TOTAL_LEDS`.

[20161124](https://github.com/DISTORTEC/distortosExamples/compare/v20160503...v20161124) - 2016-11-24
-----------------------------------------------------------------------------------------------------

This is just a snapshot with version *0.3.0* of *distortos*.

[20160503](https://github.com/DISTORTEC/distortosExamples/compare/v20160226...v20160503) - 2016-05-03
-----------------------------------------------------------------------------------------------------

### Added

- Configurations for [NUCLEO-F091RC](http://www.st.com/web/catalog/tools/PF260944) board with *STM32F0* chip,
[NUCLEO-F103RB](http://www.st.com/nucleoF103RB-pr) board with *STM32F1* chip and
[NUCLEO-F429ZI](http://www.st.com/web/catalog/tools/PF262637) board with *STM32F4* chip.
- Ability to selectively enable/disable examples via *Kconfig* menus.
- *staticSoftwareTimerBlinker* example application, which demonstrates the most basic aspects of static software timers:
creating and starting them, passing arguments to timers's function by reference and by value.

### Changed

- Change "Interrupt priority disabled in critical sections" (*ARCHITECTURE_ARMV7_M_KERNEL_BASEPRI*) option to 0 in all
configurations, so they use *ARMv7-M*'s *PRIMASK* to disable all interrupts during critical sections. This is the new
default setting in *distortos*, as this is a more conservative (and thus safer for a beginner) approach, which doesn't
require any special configuration of interrupt priorities (default value is 0).

20160226 - 2016-02-26
---------------------

### Added

- Build infrastructure from [distortosTemplateSubfolder](https://github.com/DISTORTEC/distortosTemplateSubfolder).
- *staticThreadBlinker* example application, which demonstrates the most basic aspects of static threads: creating and
starting them, passing arguments to thread's function by reference and by value, joining them.
- *dynamicThreadBlinker* example application, which demonstrates the most basic (and one more advanced) aspects of
dynamic threads: creating and starting them, passing arguments to thread's function by reference and by value, detaching
them.
- configurations for all boards supported by *distortos*:
[32F429IDISCOVERY](http://www.st.com/web/catalog/tools/PF259090), [NUCLEO-F401RE](http://www.st.com/nucleoF401RE-pr) and
[STM32F4DISCOVERY](http://www.st.com/web/catalog/tools/PF252419).
- `README.md` file with some brief explanation and quick examples.
- Integration with [Travis CI](https://travis-ci.org/DISTORTEC/distortosExamples) service.
