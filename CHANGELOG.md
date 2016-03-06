Change Log
==========

All notable changes to this project will be documented in this file. This project adheres to
[Semantic Versioning](http://semver.org/).

[Unreleased](https://github.com/DISTORTEC/distortosExamples/compare/v20160226...HEAD)
--------------------------------------------------------------------------

### Added

- Configuration for
[NUCLEO-F103RB](http://www.st.com/web/catalog/tools/FM116/SC959/SS1532/LN1847/PF259875?icmp=nucleo-ipf_pron_pr-nucleo_feb2014&sc=nucleoF103RB-pr) board with *STM32F1* chip.

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
[32F429IDISCOVERY](http://www.st.com/web/catalog/tools/FM116/SC959/SS1532/PF259090),
[NUCLEO-F401RE](http://www.st.com/web/catalog/tools/FM116/SC959/SS1532/LN1847/PF260000?icmp=nucleo-ipf_pron_pr-nucleo_feb2014&sc=nucleoF401RE-pr)
and [STM32F4DISCOVERY](http://www.st.com/web/catalog/tools/FM116/SC959/SS1532/PF252419).
- `README.md` file with some brief explanation and quick examples.
- Integration with [Travis CI](https://travis-ci.org/DISTORTEC/distortosExamples) service.
