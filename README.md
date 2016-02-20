distortosExamples [![Build Status](https://travis-ci.org/DISTORTEC/distortosExamples.svg?branch=master)](https://travis-ci.org/DISTORTEC/distortosExamples)
==========================

Examples for [distortos](http://distortos.org/) - an advanced real-time operating system for deeply embedded
targets.

Configuration & building
------------------------

1. Download
[source package with examples](https://github.com/DISTORTEC/distortosExamples/archive/master.zip) and extract it; 
2. Download [source package of distortos](https://github.com/DISTORTEC/distortos/archive/master.zip) and extract it
somewhere inside examples;
3. Configure path to sources of *distortos* in `DISTORTOS_PATH` variable in top-level `Makefile` (if you use
*GNU Make*) or `Tuprules.lua` (if you use *tup*); You can skip this step if this path is `distortos/`, as this is
the default value;
4. Configure distortos - you can either create new configuration (with `make menuconfig`) or use and existing one;
5. Execute `make configure CONFIG_PATH=<path-to-distortosConfiguration.mk>` to select the configuration you
created/chose above;
6. Execute `make` (if you use *GNU Make*) or `tup` (if you use *tup*);

Alternatively you can replace steps 1 and 2 with just
`git clone --recursive https://github.com/DISTORTEC/distortosExamples`. In such scenario you can also skip
step 3. To update *distortos* submodule to latest version use `git submodule update --remote` command.

#### Quick example

Following commands may be executed in POSIX-compatible shell (e.g. *Bash*).

##### 1. Download

Download and extract latest examples with latest *distortos*:

    $ wget https://github.com/DISTORTEC/distortosExamples/archive/master.zip -O distortosExamples-master.zip
    $ unzip -q distortosExamples-master.zip
    $ wget https://github.com/DISTORTEC/distortos/archive/master.zip -O distortos-master.zip
    $ unzip -q distortos-master.zip -d distortosExamples-master
    $ cd distortosExamples-master
    $ mv -T distortos-master/ distortos/

##### 2. Configure

Either use one of existing configurations:

    $ make configure CONFIG_PATH=configurations/STM32F4DISCOVERY

or create a new one from scratch:

    $ make menuconfig
    ... edit some options, save the configuration as distortosConfiguration.mk ...
    $ make configure

##### 3. Build

Build the project with *make*:

    $ make

or do the same with *tup*:

    $ tup

##### 4. Edit configuration & rebuild

To edit any option in the selected configuration just run *kconfig* tool again:

    $ make menuconfig
    ... edit some options, overwrite configuration file ...

You can rebuild the project immediatelly by running *make*:

    $ make

or *tup*:

    $ tup
