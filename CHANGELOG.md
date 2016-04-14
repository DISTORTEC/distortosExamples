Change Log
==========

All notable changes to this project will be documented in this file. This project adheres to
[Semantic Versioning](http://semver.org/).

[Unreleased](https://github.com/DISTORTEC/distortosExamples/compare/v20160226...HEAD)
--------------------------------------------------------------------------

### Added

- Configurations for [NUCLEO-F091RC](http://www.st.com/web/catalog/tools/PF260944) board with *STM32F0* chip, 
[NUCLEO-F103RB](http://www.st.com/nucleoF103RB-pr) board with *STM32F1* chip and
[NUCLEO-F429ZI](http://www.st.com/web/catalog/tools/PF262637) board with *STM32F4* chip.

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
