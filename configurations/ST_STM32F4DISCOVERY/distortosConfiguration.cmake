#
# \file
# \brief distortos configuration
#
# \warning
# Automatically generated file - do not edit!
#

if(DEFINED ENV{DISTORTOS_PATH})
	set(DISTORTOS_PATH "$ENV{DISTORTOS_PATH}")
else()
	set(DISTORTOS_PATH "../distortos")
endif()

set("CMAKE_BUILD_TYPE"
		"RelWithDebInfo"
		CACHE
		"STRING"
		"Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel ...")
set("CMAKE_CXX_FLAGS"
		"-fno-rtti -fno-exceptions -ffunction-sections -fdata-sections -Wall -Wextra -Wshadow -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -mfloat-abi=hard -fno-use-cxa-atexit"
		CACHE
		"STRING"
		"Flags used by the CXX compiler during all build types.")
set("CMAKE_CXX_FLAGS_DEBUG"
		"-Og -g -ggdb3"
		CACHE
		"STRING"
		"Flags used by the CXX compiler during DEBUG builds.")
set("CMAKE_CXX_FLAGS_MINSIZEREL"
		"-Os -DNDEBUG"
		CACHE
		"STRING"
		"Flags used by the CXX compiler during MINSIZEREL builds.")
set("CMAKE_CXX_FLAGS_RELEASE"
		"-O2 -DNDEBUG"
		CACHE
		"STRING"
		"Flags used by the CXX compiler during RELEASE builds.")
set("CMAKE_CXX_FLAGS_RELWITHDEBINFO"
		"-O2 -g -ggdb3"
		CACHE
		"STRING"
		"Flags used by the CXX compiler during RELWITHDEBINFO builds.")
set("CMAKE_C_FLAGS"
		"-ffunction-sections -fdata-sections -Wall -Wextra -Wshadow -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -mfloat-abi=hard"
		CACHE
		"STRING"
		"Flags used by the C compiler during all build types.")
set("CMAKE_C_FLAGS_DEBUG"
		"-Og -g -ggdb3"
		CACHE
		"STRING"
		"Flags used by the C compiler during DEBUG builds.")
set("CMAKE_C_FLAGS_MINSIZEREL"
		"-Os -DNDEBUG"
		CACHE
		"STRING"
		"Flags used by the C compiler during MINSIZEREL builds.")
set("CMAKE_C_FLAGS_RELEASE"
		"-O2 -DNDEBUG"
		CACHE
		"STRING"
		"Flags used by the C compiler during RELEASE builds.")
set("CMAKE_C_FLAGS_RELWITHDEBINFO"
		"-O2 -g -ggdb3"
		CACHE
		"STRING"
		"Flags used by the C compiler during RELWITHDEBINFO builds.")
set("CMAKE_EXE_LINKER_FLAGS"
		"-Wl,--gc-sections -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -mfloat-abi=hard"
		CACHE
		"STRING"
		"Flags used by the linker during all build types.")
set("CMAKE_EXE_LINKER_FLAGS_DEBUG"
		""
		CACHE
		"STRING"
		"Flags used by the linker during DEBUG builds.")
set("CMAKE_EXE_LINKER_FLAGS_MINSIZEREL"
		""
		CACHE
		"STRING"
		"Flags used by the linker during MINSIZEREL builds.")
set("CMAKE_EXE_LINKER_FLAGS_RELEASE"
		""
		CACHE
		"STRING"
		"Flags used by the linker during RELEASE builds.")
set("CMAKE_EXE_LINKER_FLAGS_RELWITHDEBINFO"
		""
		CACHE
		"STRING"
		"Flags used by the linker during RELWITHDEBINFO builds.")
set("CMAKE_EXPORT_COMPILE_COMMANDS"
		"ON"
		CACHE
		"BOOL"
		"Enable/Disable output of compile commands during generation.")
set("CMAKE_MODULE_LINKER_FLAGS"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of modules during all build types.")
set("CMAKE_MODULE_LINKER_FLAGS_DEBUG"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of modules during DEBUG builds.")
set("CMAKE_MODULE_LINKER_FLAGS_MINSIZEREL"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of modules during MINSIZEREL builds.")
set("CMAKE_MODULE_LINKER_FLAGS_RELEASE"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of modules during RELEASE builds.")
set("CMAKE_MODULE_LINKER_FLAGS_RELWITHDEBINFO"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of modules during RELWITHDEBINFO builds.")
set("CMAKE_SHARED_LINKER_FLAGS"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of shared libraries during all build types.")
set("CMAKE_SHARED_LINKER_FLAGS_DEBUG"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of shared libraries during DEBUG builds.")
set("CMAKE_SHARED_LINKER_FLAGS_MINSIZEREL"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of shared libraries during MINSIZEREL builds.")
set("CMAKE_SHARED_LINKER_FLAGS_RELEASE"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of shared libraries during RELEASE builds.")
set("CMAKE_SHARED_LINKER_FLAGS_RELWITHDEBINFO"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of shared libraries during RELWITHDEBINFO builds.")
set("CMAKE_STATIC_LINKER_FLAGS"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of static libraries during all build types.")
set("CMAKE_STATIC_LINKER_FLAGS_DEBUG"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of static libraries during DEBUG builds.")
set("CMAKE_STATIC_LINKER_FLAGS_MINSIZEREL"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of static libraries during MINSIZEREL builds.")
set("CMAKE_STATIC_LINKER_FLAGS_RELEASE"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of static libraries during RELEASE builds.")
set("CMAKE_STATIC_LINKER_FLAGS_RELWITHDEBINFO"
		""
		CACHE
		"STRING"
		"Flags used by the linker during the creation of static libraries during RELWITHDEBINFO builds.")
set("CMAKE_TOOLCHAIN_FILE"
		"${DISTORTOS_PATH}/source/board/ST_STM32F4DISCOVERY/Toolchain-ST_STM32F4DISCOVERY.cmake"
		CACHE
		"FILEPATH"
		"The CMake toolchain file")
set("CMAKE_VERBOSE_MAKEFILE"
		"OFF"
		CACHE
		"BOOL"
		"If this value is on, makefiles will be generated without the .SILENT directive, and all commands will be echoed to the console during the make.  This is useful for debugging only. With Visual Studio IDE projects all commands are done without /nologo.")
set("CONFIG_ARCHITECTURE_ARM"
		"ON"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_ARCHITECTURE_ARMV7_M"
		"ON"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_ARCHITECTURE_ARM_CORTEX_M4"
		"ON"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_ARCHITECTURE_ARM_CORTEX_M4_R0P1"
		"ON"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_ARCHITECTURE_ASCENDING_STACK"
		"OFF"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_ARCHITECTURE_EMPTY_STACK"
		"OFF"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_ARCHITECTURE_STACK_ALIGNMENT"
		"8"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_BOARD"
		"ST,STM32F4DISCOVERY"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_CHIP"
		"STM32F407VG"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_CHIP_STM32"
		"ON"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_CHIP_STM32F4"
		"ON"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_CHIP_STM32F40"
		"ON"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_CHIP_STM32F407"
		"ON"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_CHIP_STM32F407V"
		"ON"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_CHIP_STM32F4_RCC_HSE_CLOCK_BYPASS"
		"OFF"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_CHIP_STM32F4_RCC_HSE_FREQUENCY"
		"8000000"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_CHIP_STM32F4_VDD_MV"
		"3000"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_CHIP_STM32_GPIOV2_HAS_4_AF_BITS"
		"ON"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_CHIP_STM32_GPIOV2_HAS_HIGH_SPEED"
		"ON"
		CACHE
		"INTERNAL"
		"")
set("CONFIG_CHIP_STM32_USARTV1_HAS_CR1_OVER8_BIT"
		"ON"
		CACHE
		"INTERNAL"
		"")
set("distortos_Architecture_00_Interrupt_stack_size"
		"1024"
		CACHE
		"STRING"
		"Size (in bytes) of \"main\" stack used by core exceptions and interrupts in Handler mode.\n\nAllowed range: [8; 2147483647]")
set("distortos_Architecture_01_Interrupt_priority_disabled_in_critical_sections"
		"0"
		CACHE
		"STRING"
		"Interrupt priority disabled in critical sections.\n\nMinimal numerical priority (inclusive) of interrupt handlers that can use system's functions.\n\nDuring critical sections all interrupts with numerical priority above or equal to this value will be disabled.\nInterrupts with numerical priority below this value are never disabled, but they may not use any system's\nfunctions.\n\nNote - \"lower\" logical priority has \"higher\" numeric value! If this option is set to \"x\", then interrupts\nwith priorities between \"x\" and 255 (both inclusive) may use system's functions, while interrupts with\npriorities between 0 and \"x - 1\" (both inclusive) may not. If 0 is chosen, then all interrupts (except\nHardFault and NMI) are disabled during critical sections, so they may use system's functions.\n\nAllowed range: [-2147483648; 15]")
set("distortos_Build_00_Static_destructors"
		"OFF"
		CACHE
		"BOOL"
		"Enable static destructors.\n\nEnable destructors for objects with static storage duration. As embedded applications almost never \"exit\",\nthese destructors are usually never executed, wasting ROM.")
set("distortos_Build_02_Floating_point_ABI"
		"hard"
		CACHE
		"STRING"
		"Select floating-point ABI.")
set("distortos_Checks_00_Context_of_functions"
		"ON"
		CACHE
		"BOOL"
		"Check context of functions.\n\nSome functions may only be used from thread context, as using them from interrupt context results in undefined\nbehaviour. There are several groups of functions to which this restriction applies (some functions fall into\nseveral categories at once):\n1. all blocking functions, like callOnce(), FifoQueue::push(), Semaphore::wait(), ..., as an attempt to block\ncurrent thread of execution (not to be confused with current thread) is not possible in interrupt context;\n2. all mutex functions, as the concept of ownership by a thread - core feature of mutex - cannot be fulfilled in\ninterrupt context;\n3. all functions from ThisThread namespace (including ThisThread::Signals namespace), as in interrupt context\nthey would access a random thread that happened to be executing at that particular moment;\n\nUsing such functions from interrupt context is a common bug in applications which can be easily introduced and\nvery hard to find, as the symptoms may appear only under certain circumstances.\n\nSelecting this option enables context checks in all functions with such requirements. If any of them is used\nfrom interrupt context, FATAL_ERROR() will be called.")
set("distortos_Checks_01_Stack_pointer_range_during_context_switch"
		"ON"
		CACHE
		"BOOL"
		"Check stack pointer range during context switch.\n\nSimple range checking of preempted thread's stack pointer can be performed during context switches. It is\nrelatively fast, but cannot detect all stack overflows. The check is done before the software stack frame is\npushed on thread's stack, but the size of this pending stack frame is accounted for - the intent is to detect a\nstack overflow which is about to happen, before it can cause (further) data corrution. FATAL_ERROR() will be\ncalled if the stack pointer is outside valid range.")
set("distortos_Checks_02_Stack_pointer_range_during_system_tick"
		"ON"
		CACHE
		"BOOL"
		"Check stack pointer range during system tick.\n\nSimilar to \"Check stack pointer range during context switch\", but executed during every system tick.")
set("distortos_Checks_03_Stack_guard_contents_during_context_switch"
		"ON"
		CACHE
		"BOOL"
		"Check stack guard contents during context switch.\n\nSelecting this option extends stacks for all threads (including main() thread) with a \"stack guard\" at the\noverflow end. This \"stack guard\" - just as the whole stack - is filled with a sentinel value 0xed419f25 during\nthread initialization. The contents of \"stack guard\" of preempted thread are checked during each context\nswitch and if any byte has changed, FATAL_ERROR() will be called.\n\nThis method is slower than simple stack pointer range checking, but is able to detect stack overflows much more\nreliably. It is still sufficiently fast, assuming that the size of \"stack guard\" is reasonable.\n\nBe advised that uninitialized variables on stack which are larger than size of \"stack guard\" can create\n\"holes\" in the stack, thus circumventing this detection mechanism. This especially applies to arrays used as\nbuffers.")
set("distortos_Checks_04_Stack_guard_contents_during_system_tick"
		"ON"
		CACHE
		"BOOL"
		"Check stack guard contents during system tick.\n\nSimilar to \"Check stack guard contents during context switch\", but executed during every system tick.")
set("distortos_Checks_05_Stack_guard_size"
		"32"
		CACHE
		"STRING"
		"Size (in bytes) of \"stack guard\".\n\nAny value which is not a multiple of stack alignment required by architecture will be rounded up.\n\nAllowed range: [1; 2147483647]")
set("distortos_Clocks_00_Standard_configuration_of_clocks"
		"ON"
		CACHE
		"BOOL"
		"Enable standard configuration of clocks.\n\nThis will set values selected below and additionally configure appropriate FLASH latency before switching system\nclock to selected source.\n\nIf disabled, no clock configuration will be done during chip initialization. The values entered below\n(frequencies, dividers, ...) will only be used to determine chip clocks. The user must configure the chip\nmanually to match these settings.")
set("distortos_Clocks_01_Voltage_scale_mode"
		"1"
		CACHE
		"STRING"
		"Select voltage scale mode.\n\nAllowed range: [1; 2]")
set("distortos_Clocks_03_HSE"
		"ON"
		CACHE
		"BOOL"
		"Enable HSE (crystal/ceramic resonator or external user clock).")
set("distortos_Clocks_04_PLL"
		"ON"
		CACHE
		"BOOL"
		"Enable PLL.")
set("distortos_Clocks_05_Clock_source_of_PLLs"
		"HSE"
		CACHE
		"STRING"
		"Select clock source of main and audio PLLs.")
set("distortos_Clocks_06_PLLM"
		"4"
		CACHE
		"STRING"
		"PLLM value for main and audio PLLs.\n\nIt is used to divide PLL input clock (PLLin) before it is fed to VCO. VCO input frequency (VCOin) must\nbe in the range [1 MHz; 2 MHz], 2 MHz is recommended to limit PLL jitter.\n\nVCOin = PLLin / PLLM\n\nAllowed range: [2; 63]")
set("distortos_Clocks_07_PLLN"
		"168"
		CACHE
		"STRING"
		"PLLN value for main PLL.\n\nIt is used to multiply VCO input frequency (VCOin). Resulting VCO output frequency (VCOout) must be in\nthe range:\n- [192 MHz; 432 MHz] for STM32F401 chips,\n- [100 MHz; 432 MHz] for other chips.\n\nVCOout = VCOin * PLLN = PLLin / PLLM * PLLN\n\nAllowed range: [50; 432]")
set("distortos_Clocks_08_PLLP"
		"2"
		CACHE
		"STRING"
		"PLLP value for main PLL.\n\nIt is used to divide VCO output frequency (VCOout). PLL output frequency (PLLout) must not exceed:\n* for STM32F401 chips:\n- 84 MHz in voltage scale 2 mode,\n- 60 MHz in voltage scale 3 mode,\n* for STM32F405, STM32F407, STM32F415 and STM32F417 chips:\n- 168 MHz in voltage scale 1 mode,\n- 144 MHz in voltage scale 2 mode,\n* for STM32F410, STM32F411, STM32F412, STM32F413 and STM32F423 chips:\n- 100 MHz in voltage scale 1 mode,\n- 84 MHz in voltage scale 2 mode,\n- 64 MHz in voltage scale 3 mode,\n* for other chips:\n- 180 MHz in voltage scale 1 mode with over-drive mode,\n- 168 MHz in voltage scale 1 mode,\n- 144 MHz in voltage scale 2 mode,\n- 120 MHz in voltage scale 3 mode.\n\nPLLout = VCOout / PLLP = PLLin / PLLM * PLLN / PLLP")
set("distortos_Clocks_09_PLLQ"
		"7"
		CACHE
		"STRING"
		"PLLQ value for main PLL.\n\nIt is used to divide VCO output frequency (VCOout) to produce clock for USB OTG FS, SDIO and RNG\n(PLLQout). USB OTG FS requires a 48 MHz clock for correct operation, while SDIO and RNG need a frequency\nlower than or equal to 48 MHz to work correctly.\n\nPLLQout = VCOout / PLLQ = PLLin / PLLM * PLLN / PLLQ\n\nAllowed range: [2; 15]")
set("distortos_Clocks_11_System_clock_source"
		"PLL"
		CACHE
		"STRING"
		"Select system clock source.")
set("distortos_Clocks_12_HPRE"
		"1"
		CACHE
		"STRING"
		"AHB clock division factor.\n\nAHBclk = SYSclk / AHBdivider")
set("distortos_Clocks_13_PPRE1"
		"4"
		CACHE
		"STRING"
		"APB1 (low speed) clock division factor.\n\nAPB1 clock must not exceed:\n- 42 MHz for STM32F401, STM32F405, STM32F407, STM32F415 and STM32F417 chips,\n- 50 MHz for STM32F410, STM32F411, STM32F412, STM32F413 and STM32F423 chips,\n- 45 MHz (with over-drive mode) or 42 MHz (otherwise) for other chips.\n\nAPB1clk = AHBclk / APB1divider")
set("distortos_Clocks_14_PPRE2"
		"2"
		CACHE
		"STRING"
		"APB2 (high speed) clock division factor.\n\nAPB2 clock must not exceed:\n- 84 MHz for STM32F401, STM32F405, STM32F407, STM32F415 and STM32F417 chips,\n- 100 MHz for STM32F410, STM32F411, STM32F412, STM32F413 and STM32F423 chips,\n- 90 MHz (with over-drive mode) or 84 MHz (otherwise) for other chips.\n\nAPB2clk = AHBclk / APB2divider")
set("distortos_Memory_00_Flash_prefetch"
		"OFF"
		CACHE
		"BOOL"
		"Enable flash prefetch option in FLASH->ACR register.\n\nEarly revisions of older STM32F4 devices don't support this feature. Enabling this feature may also increase\nnoise of ADC. Check device errata sheet of selected chip to see whether it is affected by any of these\nissues.")
set("distortos_Memory_01_Flash_data_cache"
		"ON"
		CACHE
		"BOOL"
		"Enable flash data cache option in FLASH->ACR register.")
set("distortos_Memory_02_Flash_instruction_cache"
		"ON"
		CACHE
		"BOOL"
		"Enable flash instruction cache option in FLASH->ACR register.")
set("distortos_Memory_regions_00_text_vectors"
		"flash"
		CACHE
		"STRING"
		"Memory region for .text.vectors section in linker script")
set("distortos_Memory_regions_01_text"
		"flash"
		CACHE
		"STRING"
		"Memory region for .text section in linker script")
set("distortos_Memory_regions_02_ARM_exidx"
		"flash"
		CACHE
		"STRING"
		"Memory region for .ARM.exidx section in linker script")
set("distortos_Memory_regions_03_Main_stack"
		"SRAM"
		CACHE
		"STRING"
		"Memory region for main stack in linker script")
set("distortos_Memory_regions_04_bss"
		"SRAM"
		CACHE
		"STRING"
		"Memory region for .bss section in linker script")
set("distortos_Memory_regions_05_data_VMA"
		"SRAM"
		CACHE
		"STRING"
		"VMA memory region for .data section in linker script")
set("distortos_Memory_regions_06_data_LMA"
		"flash"
		CACHE
		"STRING"
		"LMA memory region for .data section in linker script")
set("distortos_Memory_regions_07_noinit"
		"SRAM"
		CACHE
		"STRING"
		"Memory region for .noinit section in linker script")
set("distortos_Memory_regions_08_SRAM_data_LMA"
		"flash"
		CACHE
		"STRING"
		"LMA memory region for .SRAM.data section in linker script")
set("distortos_Memory_regions_09_CCM_data_LMA"
		"flash"
		CACHE
		"STRING"
		"LMA memory region for .CCM.data section in linker script")
set("distortos_Memory_regions_10_Process_stack"
		"SRAM"
		CACHE
		"STRING"
		"Memory region for process stack in linker script")
set("distortos_Memory_regions_11_Heap"
		"SRAM"
		CACHE
		"STRING"
		"Memory region for heap in linker script")
set("distortos_Peripherals_GPIOA"
		"ON"
		CACHE
		"INTERNAL"
		"Enable GPIOA.")
set("distortos_Peripherals_GPIOB"
		"OFF"
		CACHE
		"BOOL"
		"Enable GPIOB.")
set("distortos_Peripherals_GPIOC"
		"OFF"
		CACHE
		"BOOL"
		"Enable GPIOC.")
set("distortos_Peripherals_GPIOD"
		"ON"
		CACHE
		"INTERNAL"
		"Enable GPIOD.")
set("distortos_Peripherals_GPIOE"
		"OFF"
		CACHE
		"BOOL"
		"Enable GPIOE.")
set("distortos_Peripherals_GPIOH"
		"OFF"
		CACHE
		"BOOL"
		"Enable GPIOH.")
set("distortos_Peripherals_SPI1"
		"OFF"
		CACHE
		"BOOL"
		"Enable SPI1 low-level driver.")
set("distortos_Peripherals_SPI2"
		"OFF"
		CACHE
		"BOOL"
		"Enable SPI2 low-level driver.")
set("distortos_Peripherals_SPI3"
		"OFF"
		CACHE
		"BOOL"
		"Enable SPI3 low-level driver.")
set("distortos_Peripherals_UART4"
		"OFF"
		CACHE
		"BOOL"
		"Enable UART4 low-level driver.")
set("distortos_Peripherals_UART5"
		"OFF"
		CACHE
		"BOOL"
		"Enable UART5 low-level driver.")
set("distortos_Peripherals_USART1"
		"OFF"
		CACHE
		"BOOL"
		"Enable USART1 low-level driver.")
set("distortos_Peripherals_USART2"
		"OFF"
		CACHE
		"BOOL"
		"Enable USART2 low-level driver.")
set("distortos_Peripherals_USART3"
		"OFF"
		CACHE
		"BOOL"
		"Enable USART3 low-level driver.")
set("distortos_Peripherals_USART6"
		"OFF"
		CACHE
		"BOOL"
		"Enable USART6 low-level driver.")
set("distortos_Scheduler_00_Tick_frequency"
		"1000"
		CACHE
		"STRING"
		"System's tick frequency, Hz.\n\nAllowed range: [1; 2147483647]")
set("distortos_Scheduler_01_Round_robin_frequency"
		"10"
		CACHE
		"STRING"
		"Round-robin frequency, Hz.\n\nAllowed range: [1; 1000]")
set("distortos_Scheduler_02_Support_for_signals"
		"OFF"
		CACHE
		"BOOL"
		"Enable support for signals.\n\nEnable namespaces, functions and classes related to signals:\n- ThisThread::Signals namespace;\n- Thread::generateSignal();\n- Thread::getPendingSignalSet();\n- Thread::queueSignal();\n- DynamicSignalsReceiver class;\n- SignalInformationQueueWrapper class;\n- SignalsCatcher class;\n- SignalsReceiver class;\n- StaticSignalsReceiver class;\n\nWhen this options is not selected, these namespaces, functions and classes are not available at all.")
set("distortos_Scheduler_03_Support_for_thread_detachment"
		"ON"
		CACHE
		"BOOL"
		"Enable support for thread detachment.\n\nEnable functions that \"detach\" dynamic threads:\n- ThisThread::detach();\n- Thread::detach();\n\nWhen this options is not selected, these functions are not available at all.\n\nWhen dynamic and detached thread terminates, it will be added to the global list of threads pending for deferred\ndeletion. The thread will actually be deleted in idle thread, but only when two mutexes are successfully locked:\n- mutex that protects dynamic memory allocator;\n- mutex that synchronizes access to the list of threads pending for deferred deletion;")
set("distortos_Scheduler_04_Main_thread_stack_size"
		"8192"
		CACHE
		"STRING"
		"Size (in bytes) of stack used by thread with main() function.\n\nAllowed range: [1; 2147483647]")
set("distortos_Scheduler_05_Main_thread_priority"
		"127"
		CACHE
		"STRING"
		"Initial priority of main thread.\n\nAllowed range: [1; 255]")
set("distortos_buttons"
		"ON"
		CACHE
		"BOOL"
		"Enable buttons")
set("distortos_buttons_B1"
		"ON"
		CACHE
		"BOOL"
		"Enable B1 (User)")
set("distortos_leds"
		"ON"
		CACHE
		"BOOL"
		"Enable leds")
set("distortos_leds_Ld3"
		"ON"
		CACHE
		"BOOL"
		"Enable Ld3 (Orange)")
set("distortos_leds_Ld4"
		"ON"
		CACHE
		"BOOL"
		"Enable Ld4 (Green)")
set("distortos_leds_Ld5"
		"ON"
		CACHE
		"BOOL"
		"Enable Ld5 (Red)")
set("distortos_leds_Ld6"
		"ON"
		CACHE
		"BOOL"
		"Enable Ld6 (Blue)")
