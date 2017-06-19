#
# Automatically generated file; DO NOT EDIT.
# Configuration
#

#
# Board, chip & architecture configuration
#
CONFIG_CHIP_STM32=y
# CONFIG_CHIP_STM32F0 is not set
# CONFIG_CHIP_STM32F1 is not set
# CONFIG_CHIP_STM32F4 is not set
# CONFIG_CHIP_STM32F7 is not set
CONFIG_CHIP_STM32L0=y
# CONFIG_BOARD_CUSTOM is not set
CONFIG_BOARD_NUCLEO_L073RZ=y
CONFIG_BOARD_INCLUDES="source/board/STM32/STM32L0/NUCLEO-L073RZ/include"
CONFIG_BOARD="NUCLEO-L073RZ"

#
# Generic board options
#
CONFIG_BOARD_BUTTONS_ENABLE=y
CONFIG_BOARD_LEDS_ENABLE=y
CONFIG_BOARD_HAS_BUTTONS=y
CONFIG_BOARD_HAS_LEDS=y
CONFIG_CHIP_ROM_SIZE=196608
CONFIG_CHIP_ROM_ADDRESS=0x08000000
CONFIG_CHIP="STM32L073RZ"
CONFIG_CHIP_INCLUDES="source/chip/STM32/include source/chip/STM32/STM32L0/include source/chip/STM32/peripherals/GPIOv2/include source/chip/STM32/peripherals/SPIv1/include source/chip/STM32/peripherals/USARTv2/include external/CMSIS-STM32L0 external/CMSIS"

#
# STM32L0 chip options
#

#
# Clocks configuration
#
CONFIG_CHIP_STM32L0_STANDARD_CLOCK_CONFIGURATION_ENABLE=y
CONFIG_CHIP_STM32L0_PWR_VOLTAGE_SCALE_MODE=1
# CONFIG_CHIP_STM32L0_RCC_MSI_ENABLE is not set
CONFIG_CHIP_STM32L0_RCC_HSE_ENABLE=y
CONFIG_CHIP_STM32L0_RCC_HSE_CLOCK_BYPASS=y
CONFIG_CHIP_STM32L0_RCC_HSE_FREQUENCY=8000000
# CONFIG_CHIP_STM32L0_RCC_HSI16_ENABLE is not set
# CONFIG_CHIP_STM32L0_RCC_HSI48_ENABLE is not set
CONFIG_CHIP_STM32L0_RCC_PLL_ENABLE=y
CONFIG_CHIP_STM32L0_RCC_PLLSRC_HSE=y
# CONFIG_CHIP_STM32L0_RCC_PLLMUL3 is not set
# CONFIG_CHIP_STM32L0_RCC_PLLMUL4 is not set
# CONFIG_CHIP_STM32L0_RCC_PLLMUL6 is not set
# CONFIG_CHIP_STM32L0_RCC_PLLMUL8 is not set
CONFIG_CHIP_STM32L0_RCC_PLLMUL12=y
# CONFIG_CHIP_STM32L0_RCC_PLLMUL16 is not set
# CONFIG_CHIP_STM32L0_RCC_PLLMUL24 is not set
# CONFIG_CHIP_STM32L0_RCC_PLLMUL32 is not set
# CONFIG_CHIP_STM32L0_RCC_PLLMUL48 is not set
CONFIG_CHIP_STM32L0_RCC_PLLDIV=3
# CONFIG_CHIP_STM32L0_RCC_SYSCLK_HSE is not set
CONFIG_CHIP_STM32L0_RCC_SYSCLK_PLL=y
CONFIG_CHIP_STM32L0_RCC_AHB_DIV1=y
# CONFIG_CHIP_STM32L0_RCC_AHB_DIV2 is not set
# CONFIG_CHIP_STM32L0_RCC_AHB_DIV4 is not set
# CONFIG_CHIP_STM32L0_RCC_AHB_DIV8 is not set
# CONFIG_CHIP_STM32L0_RCC_AHB_DIV16 is not set
# CONFIG_CHIP_STM32L0_RCC_AHB_DIV64 is not set
# CONFIG_CHIP_STM32L0_RCC_AHB_DIV128 is not set
# CONFIG_CHIP_STM32L0_RCC_AHB_DIV256 is not set
# CONFIG_CHIP_STM32L0_RCC_AHB_DIV512 is not set
CONFIG_CHIP_STM32L0_RCC_APB1_DIV1=y
# CONFIG_CHIP_STM32L0_RCC_APB1_DIV2 is not set
# CONFIG_CHIP_STM32L0_RCC_APB1_DIV4 is not set
# CONFIG_CHIP_STM32L0_RCC_APB1_DIV8 is not set
# CONFIG_CHIP_STM32L0_RCC_APB1_DIV16 is not set
CONFIG_CHIP_STM32L0_RCC_APB2_DIV1=y
# CONFIG_CHIP_STM32L0_RCC_APB2_DIV2 is not set
# CONFIG_CHIP_STM32L0_RCC_APB2_DIV4 is not set
# CONFIG_CHIP_STM32L0_RCC_APB2_DIV8 is not set
# CONFIG_CHIP_STM32L0_RCC_APB2_DIV16 is not set

#
# Memory configuration
#
CONFIG_CHIP_STM32L0_FLASH_PREFETCH_ENABLE=y
# CONFIG_CHIP_STM32L01 is not set
# CONFIG_CHIP_STM32L011 is not set
# CONFIG_CHIP_STM32L011D is not set
# CONFIG_CHIP_STM32L011D3 is not set
# CONFIG_CHIP_STM32L011D4 is not set
# CONFIG_CHIP_STM32L011E is not set
# CONFIG_CHIP_STM32L011E3 is not set
# CONFIG_CHIP_STM32L011E4 is not set
# CONFIG_CHIP_STM32L011F is not set
# CONFIG_CHIP_STM32L011F3 is not set
# CONFIG_CHIP_STM32L011F4 is not set
# CONFIG_CHIP_STM32L011G is not set
# CONFIG_CHIP_STM32L011G3 is not set
# CONFIG_CHIP_STM32L011G4 is not set
# CONFIG_CHIP_STM32L011K is not set
# CONFIG_CHIP_STM32L011K3 is not set
# CONFIG_CHIP_STM32L011K4 is not set
# CONFIG_CHIP_STM32L02 is not set
# CONFIG_CHIP_STM32L021 is not set
# CONFIG_CHIP_STM32L021D is not set
# CONFIG_CHIP_STM32L021D4 is not set
# CONFIG_CHIP_STM32L021F is not set
# CONFIG_CHIP_STM32L021F4 is not set
# CONFIG_CHIP_STM32L021G is not set
# CONFIG_CHIP_STM32L021G4 is not set
# CONFIG_CHIP_STM32L021K is not set
# CONFIG_CHIP_STM32L021K4 is not set
# CONFIG_CHIP_STM32L03 is not set
# CONFIG_CHIP_STM32L031 is not set
# CONFIG_CHIP_STM32L031C is not set
# CONFIG_CHIP_STM32L031C4 is not set
# CONFIG_CHIP_STM32L031C6 is not set
# CONFIG_CHIP_STM32L031E is not set
# CONFIG_CHIP_STM32L031E4 is not set
# CONFIG_CHIP_STM32L031E6 is not set
# CONFIG_CHIP_STM32L031F is not set
# CONFIG_CHIP_STM32L031F4 is not set
# CONFIG_CHIP_STM32L031F6 is not set
# CONFIG_CHIP_STM32L031G is not set
# CONFIG_CHIP_STM32L031G4 is not set
# CONFIG_CHIP_STM32L031G6 is not set
# CONFIG_CHIP_STM32L031K is not set
# CONFIG_CHIP_STM32L031K4 is not set
# CONFIG_CHIP_STM32L031K6 is not set
# CONFIG_CHIP_STM32L04 is not set
# CONFIG_CHIP_STM32L041 is not set
# CONFIG_CHIP_STM32L041C is not set
# CONFIG_CHIP_STM32L041C4 is not set
# CONFIG_CHIP_STM32L041C6 is not set
# CONFIG_CHIP_STM32L041E is not set
# CONFIG_CHIP_STM32L041E6 is not set
# CONFIG_CHIP_STM32L041F is not set
# CONFIG_CHIP_STM32L041F6 is not set
# CONFIG_CHIP_STM32L041G is not set
# CONFIG_CHIP_STM32L041G6 is not set
# CONFIG_CHIP_STM32L041K is not set
# CONFIG_CHIP_STM32L041K6 is not set
# CONFIG_CHIP_STM32L05 is not set
# CONFIG_CHIP_STM32L051 is not set
# CONFIG_CHIP_STM32L051C is not set
# CONFIG_CHIP_STM32L051C6 is not set
# CONFIG_CHIP_STM32L051C8 is not set
# CONFIG_CHIP_STM32L051K is not set
# CONFIG_CHIP_STM32L051K6 is not set
# CONFIG_CHIP_STM32L051K8 is not set
# CONFIG_CHIP_STM32L051R is not set
# CONFIG_CHIP_STM32L051R6 is not set
# CONFIG_CHIP_STM32L051R8 is not set
# CONFIG_CHIP_STM32L051T is not set
# CONFIG_CHIP_STM32L051T6 is not set
# CONFIG_CHIP_STM32L051T8 is not set
# CONFIG_CHIP_STM32L052 is not set
# CONFIG_CHIP_STM32L052C is not set
# CONFIG_CHIP_STM32L052C6 is not set
# CONFIG_CHIP_STM32L052C8 is not set
# CONFIG_CHIP_STM32L052K is not set
# CONFIG_CHIP_STM32L052K6 is not set
# CONFIG_CHIP_STM32L052K8 is not set
# CONFIG_CHIP_STM32L052R is not set
# CONFIG_CHIP_STM32L052R6 is not set
# CONFIG_CHIP_STM32L052R8 is not set
# CONFIG_CHIP_STM32L052T is not set
# CONFIG_CHIP_STM32L052T6 is not set
# CONFIG_CHIP_STM32L052T8 is not set
# CONFIG_CHIP_STM32L053 is not set
# CONFIG_CHIP_STM32L053C is not set
# CONFIG_CHIP_STM32L053C6 is not set
# CONFIG_CHIP_STM32L053C8 is not set
# CONFIG_CHIP_STM32L053R is not set
# CONFIG_CHIP_STM32L053R6 is not set
# CONFIG_CHIP_STM32L053R8 is not set
# CONFIG_CHIP_STM32L06 is not set
# CONFIG_CHIP_STM32L062 is not set
# CONFIG_CHIP_STM32L062K is not set
# CONFIG_CHIP_STM32L062K8 is not set
# CONFIG_CHIP_STM32L063 is not set
# CONFIG_CHIP_STM32L063C is not set
# CONFIG_CHIP_STM32L063C8 is not set
# CONFIG_CHIP_STM32L063R is not set
# CONFIG_CHIP_STM32L063R8 is not set
CONFIG_CHIP_STM32L07=y
# CONFIG_CHIP_STM32L071 is not set
# CONFIG_CHIP_STM32L071C is not set
# CONFIG_CHIP_STM32L071C8 is not set
# CONFIG_CHIP_STM32L071CB is not set
# CONFIG_CHIP_STM32L071CZ is not set
# CONFIG_CHIP_STM32L071K is not set
# CONFIG_CHIP_STM32L071K8 is not set
# CONFIG_CHIP_STM32L071KB is not set
# CONFIG_CHIP_STM32L071KZ is not set
# CONFIG_CHIP_STM32L071R is not set
# CONFIG_CHIP_STM32L071RB is not set
# CONFIG_CHIP_STM32L071RZ is not set
# CONFIG_CHIP_STM32L071V is not set
# CONFIG_CHIP_STM32L071V8 is not set
# CONFIG_CHIP_STM32L071VB is not set
# CONFIG_CHIP_STM32L071VZ is not set
# CONFIG_CHIP_STM32L072 is not set
# CONFIG_CHIP_STM32L072C is not set
# CONFIG_CHIP_STM32L072CB is not set
# CONFIG_CHIP_STM32L072CZ is not set
# CONFIG_CHIP_STM32L072K is not set
# CONFIG_CHIP_STM32L072KB is not set
# CONFIG_CHIP_STM32L072KZ is not set
# CONFIG_CHIP_STM32L072R is not set
# CONFIG_CHIP_STM32L072RB is not set
# CONFIG_CHIP_STM32L072RZ is not set
# CONFIG_CHIP_STM32L072V is not set
# CONFIG_CHIP_STM32L072V8 is not set
# CONFIG_CHIP_STM32L072VB is not set
# CONFIG_CHIP_STM32L072VZ is not set
CONFIG_CHIP_STM32L073=y
# CONFIG_CHIP_STM32L073C is not set
# CONFIG_CHIP_STM32L073CB is not set
# CONFIG_CHIP_STM32L073CZ is not set
CONFIG_CHIP_STM32L073R=y
# CONFIG_CHIP_STM32L073RB is not set
CONFIG_CHIP_STM32L073RZ=y
# CONFIG_CHIP_STM32L073V is not set
# CONFIG_CHIP_STM32L073V8 is not set
# CONFIG_CHIP_STM32L073VB is not set
# CONFIG_CHIP_STM32L073VZ is not set
# CONFIG_CHIP_STM32L08 is not set
# CONFIG_CHIP_STM32L081 is not set
# CONFIG_CHIP_STM32L081C is not set
# CONFIG_CHIP_STM32L081CZ is not set
# CONFIG_CHIP_STM32L081K is not set
# CONFIG_CHIP_STM32L081KZ is not set
# CONFIG_CHIP_STM32L082 is not set
# CONFIG_CHIP_STM32L082C is not set
# CONFIG_CHIP_STM32L082CZ is not set
# CONFIG_CHIP_STM32L082K is not set
# CONFIG_CHIP_STM32L082KB is not set
# CONFIG_CHIP_STM32L082KZ is not set
# CONFIG_CHIP_STM32L083 is not set
# CONFIG_CHIP_STM32L083C is not set
# CONFIG_CHIP_STM32L083CB is not set
# CONFIG_CHIP_STM32L083CZ is not set
# CONFIG_CHIP_STM32L083R is not set
# CONFIG_CHIP_STM32L083RB is not set
# CONFIG_CHIP_STM32L083RZ is not set
# CONFIG_CHIP_STM32L083V is not set
# CONFIG_CHIP_STM32L083V8 is not set
# CONFIG_CHIP_STM32L083VB is not set
# CONFIG_CHIP_STM32L083VZ is not set
CONFIG_CHIP_STM32L0_SRAM_SIZE=20480
CONFIG_CHIP_STM32L0_SRAM_ADDRESS=0x20000000
CONFIG_CHIP_STM32L0_RCC_HAS_HSE=y
CONFIG_CHIP_STM32L0_RCC_HSE_CLOCK_BYPASS_CONFIGURABLE=y
# CONFIG_CHIP_STM32L0_RCC_HSE_CLOCK_BYPASS_DEFAULT is not set
CONFIG_CHIP_STM32L0_RCC_HSE_FREQUENCY_CONFIGURABLE=y
CONFIG_CHIP_STM32L0_RCC_HSE_FREQUENCY_DEFAULT=8000000
CONFIG_CHIP_STM32L0_RCC_PLLMUL=12
CONFIG_CHIP_STM32L0_RCC_HPRE=1
CONFIG_CHIP_STM32L0_RCC_PPRE1=1
CONFIG_CHIP_STM32L0_RCC_PPRE2=1

#
# Peripherals configuration
#
CONFIG_CHIP_STM32_GPIOV2_GPIOA_ENABLE=y
# CONFIG_CHIP_STM32_GPIOV2_GPIOB_ENABLE is not set
CONFIG_CHIP_STM32_GPIOV2_GPIOC_ENABLE=y
# CONFIG_CHIP_STM32_GPIOV2_GPIOD_ENABLE is not set
# CONFIG_CHIP_STM32_GPIOV2_GPIOH_ENABLE is not set
# CONFIG_CHIP_STM32_GPIOV2_HAS_4_AF_BITS is not set
# CONFIG_CHIP_STM32_GPIOV2_HAS_HIGH_SPEED is not set
CONFIG_CHIP_STM32_GPIOV2_HAS_GPIOA=y
CONFIG_CHIP_STM32_GPIOV2_HAS_GPIOB=y
CONFIG_CHIP_STM32_GPIOV2_HAS_GPIOC=y
CONFIG_CHIP_STM32_GPIOV2_HAS_GPIOD=y
# CONFIG_CHIP_STM32_GPIOV2_HAS_GPIOE is not set
# CONFIG_CHIP_STM32_GPIOV2_HAS_GPIOF is not set
# CONFIG_CHIP_STM32_GPIOV2_HAS_GPIOG is not set
CONFIG_CHIP_STM32_GPIOV2_HAS_GPIOH=y
# CONFIG_CHIP_STM32_GPIOV2_HAS_GPIOI is not set
# CONFIG_CHIP_STM32_GPIOV2_HAS_GPIOJ is not set
# CONFIG_CHIP_STM32_GPIOV2_HAS_GPIOK is not set
# CONFIG_CHIP_STM32_GPIOV1 is not set
CONFIG_CHIP_STM32_GPIOV2=y
CONFIG_CHIP_STM32_SPIV1=y
# CONFIG_CHIP_STM32_SPIV2 is not set
# CONFIG_CHIP_STM32_USARTV1 is not set
CONFIG_CHIP_STM32_USARTV2=y
# CONFIG_CHIP_STM32_SPIV1_SPI1_ENABLE is not set
# CONFIG_CHIP_STM32_SPIV1_SPI2_ENABLE is not set
CONFIG_CHIP_STM32_SPIV1_HAS_SPI1=y
CONFIG_CHIP_STM32_SPIV1_HAS_SPI2=y
# CONFIG_CHIP_STM32_SPIV1_HAS_SPI3 is not set
# CONFIG_CHIP_STM32_SPIV1_HAS_SPI4 is not set
# CONFIG_CHIP_STM32_SPIV1_HAS_SPI5 is not set
# CONFIG_CHIP_STM32_SPIV1_HAS_SPI6 is not set
# CONFIG_CHIP_STM32_USARTV2_USART1_ENABLE is not set
# CONFIG_CHIP_STM32_USARTV2_USART2_ENABLE is not set
# CONFIG_CHIP_STM32_USARTV2_USART4_ENABLE is not set
# CONFIG_CHIP_STM32_USARTV2_USART5_ENABLE is not set
CONFIG_CHIP_STM32_USARTV2_HAS_CR1_M1_BIT=y
# CONFIG_CHIP_STM32_USARTV2_USART3_USART6_COMBINED_INTERRUPT is not set
# CONFIG_CHIP_STM32_USARTV2_USART3_USART8_COMBINED_INTERRUPT is not set
CONFIG_CHIP_STM32_USARTV2_USART4_USART5_COMBINED_INTERRUPT=y
CONFIG_CHIP_STM32_USARTV2_HAS_USART1=y
CONFIG_CHIP_STM32_USARTV2_HAS_USART2=y
# CONFIG_CHIP_STM32_USARTV2_HAS_USART3 is not set
# CONFIG_CHIP_STM32_USARTV2_HAS_UART4 is not set
CONFIG_CHIP_STM32_USARTV2_HAS_USART4=y
# CONFIG_CHIP_STM32_USARTV2_HAS_UART5 is not set
CONFIG_CHIP_STM32_USARTV2_HAS_USART5=y
# CONFIG_CHIP_STM32_USARTV2_HAS_USART6 is not set
# CONFIG_CHIP_STM32_USARTV2_HAS_UART7 is not set
# CONFIG_CHIP_STM32_USARTV2_HAS_USART7 is not set
# CONFIG_CHIP_STM32_USARTV2_HAS_UART8 is not set
# CONFIG_CHIP_STM32_USARTV2_HAS_USART8 is not set

#
# Generic chip options
#
CONFIG_ARCHITECTURE_ARMV6_M=y
# CONFIG_ARCHITECTURE_ARMV7_M is not set
CONFIG_ARCHITECTURE_STACK_ALIGNMENT=8
CONFIG_TOOLCHAIN_PREFIX="arm-none-eabi-"

#
# ARMv6-M architecture options
#
# CONFIG_ARCHITECTURE_ARM_CORTEX_M0 is not set
CONFIG_ARCHITECTURE_ARM_CORTEX_M0PLUS=y
# CONFIG_ARCHITECTURE_ARM_CORTEX_M0PLUS_R0P0 is not set
CONFIG_ARCHITECTURE_ARM_CORTEX_M0PLUS_R0P1=y
# CONFIG_ARCHITECTURE_ARM_CORTEX_M1 is not set
# CONFIG_ARCHITECTURE_HAS_ITERATIVE_MULTIPLIER is not set
CONFIG_ARCHITECTURE_FLAGS="-mcpu=cortex-m0plus -mthumb"
CONFIG_ARCHITECTURE_ARMV6_M_ARMV7_M_MAIN_STACK_SIZE=1024
CONFIG_ARCHITECTURE_INCLUDES="source/architecture/ARM/ARMv6-M-ARMv7-M/include"

#
# Generic architecture options
#
# CONFIG_ARCHITECTURE_ASCENDING_STACK is not set
# CONFIG_ARCHITECTURE_EMPTY_STACK is not set
# CONFIG_ARCHITECTURE_HAS_FPU is not set
CONFIG_ARCHITECTURE_ARM=y

#
# Scheduler configuration
#
CONFIG_TICK_FREQUENCY=1000
CONFIG_ROUND_ROBIN_FREQUENCY=10
# CONFIG_SIGNALS_ENABLE is not set
CONFIG_THREAD_DETACH_ENABLE=y

#
# main() thread options
#
CONFIG_MAIN_THREAD_STACK_SIZE=4096
CONFIG_MAIN_THREAD_PRIORITY=127

#
# Runtime checks
#
CONFIG_CHECK_FUNCTION_CONTEXT_ENABLE=y
CONFIG_CHECK_STACK_POINTER_RANGE_CONTEXT_SWITCH_ENABLE=y
CONFIG_CHECK_STACK_POINTER_RANGE_SYSTEM_TICK_ENABLE=y
CONFIG_CHECK_STACK_GUARD_CONTEXT_SWITCH_ENABLE=y
CONFIG_CHECK_STACK_GUARD_SYSTEM_TICK_ENABLE=y
CONFIG_STACK_GUARD_SIZE=32

#
# Applications configuration
#
# CONFIG_TEST_APPLICATION_ENABLE is not set
CONFIG_STATICSOFTWARETIMERBLINKER_ENABLE=y
CONFIG_DYNAMICTHREADBLINKER_ENABLE=y
CONFIG_STATICTHREADBLINKER_ENABLE=y

#
# Build configuration
#
# CONFIG_BUILD_OPTIMIZATION_O0 is not set
# CONFIG_BUILD_OPTIMIZATION_O1 is not set
CONFIG_BUILD_OPTIMIZATION_O2=y
# CONFIG_BUILD_OPTIMIZATION_O3 is not set
# CONFIG_BUILD_OPTIMIZATION_OS is not set
# CONFIG_BUILD_OPTIMIZATION_OG is not set
# CONFIG_LINK_TIME_OPTIMIZATION_ENABLE is not set
CONFIG_DEBUGGING_INFORMATION_ENABLE=y
CONFIG_ASSERT_ENABLE=y
# CONFIG_LDSCRIPT_ROM_SIZE_MANUAL_CONFIGURATION is not set
CONFIG_LDSCRIPT_ROM_BEGIN=0
CONFIG_LDSCRIPT_ROM_END=196608
CONFIG_BUILD_OPTIMIZATION="-O2"
CONFIG_LINK_TIME_OPTIMIZATION_COMPILATION=""
CONFIG_LINK_TIME_OPTIMIZATION_LINKING=""
CONFIG_DEBUGGING_INFORMATION_COMPILATION="-g -ggdb3"
CONFIG_DEBUGGING_INFORMATION_LINKING="-g"
CONFIG_ASSERT=""
