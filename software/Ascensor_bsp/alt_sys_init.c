/*
 * alt_sys_init.c - HAL initialization source
 *
 * Machine generated for CPU 'cpu' in SOPC Builder design 'ejer2'
 * SOPC Builder design path: D:/SID/Trabajo/ejer2.sopcinfo
 *
 * Generated: Wed Jun 17 16:21:52 CEST 2015
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#include "system.h"
#include "sys/alt_irq.h"
#include "sys/alt_sys_init.h"

#include <stddef.h>

/*
 * Device headers
 */

#include "altera_nios2_qsys_irq.h"
#include "altera_avalon_jtag_uart.h"
#include "altera_avalon_performance_counter.h"
#include "altera_avalon_sysid_qsys.h"
#include "altera_avalon_timer.h"
#include "altera_up_avalon_character_lcd.h"
#include "altera_up_avalon_parallel_port.h"

/*
 * Allocate the device storage
 */

ALTERA_NIOS2_QSYS_IRQ_INSTANCE ( CPU, cpu);
ALTERA_AVALON_JTAG_UART_INSTANCE ( JTAG_UART, jtag_uart);
ALTERA_AVALON_PERFORMANCE_COUNTER_INSTANCE ( PERFORMANCE_COUNTER, performance_counter);
ALTERA_AVALON_SYSID_QSYS_INSTANCE ( SYSID, sysid);
ALTERA_AVALON_TIMER_INSTANCE ( TIMER, timer);
ALTERA_UP_AVALON_CHARACTER_LCD_INSTANCE ( CHAR_LCD, char_lcd);
ALTERA_UP_AVALON_PARALLEL_PORT_INSTANCE ( GREEN_LEDS, green_leds);
ALTERA_UP_AVALON_PARALLEL_PORT_INSTANCE ( HEX3_HEX0, HEX3_HEX0);
ALTERA_UP_AVALON_PARALLEL_PORT_INSTANCE ( HEX7_HEX4, HEX7_HEX4);
ALTERA_UP_AVALON_PARALLEL_PORT_INSTANCE ( PUSHBUTTONS, pushbuttons);
ALTERA_UP_AVALON_PARALLEL_PORT_INSTANCE ( RED_LEDS, red_leds);
ALTERA_UP_AVALON_PARALLEL_PORT_INSTANCE ( SWITCHES, switches);

/*
 * Initialize the interrupt controller devices
 * and then enable interrupts in the CPU.
 * Called before alt_sys_init().
 * The "base" parameter is ignored and only
 * present for backwards-compatibility.
 */

void alt_irq_init ( const void* base )
{
    ALTERA_NIOS2_QSYS_IRQ_INIT ( CPU, cpu);
    alt_irq_cpu_enable_interrupts();
}

/*
 * Initialize the non-interrupt controller devices.
 * Called after alt_irq_init().
 */

void alt_sys_init( void )
{
    ALTERA_AVALON_TIMER_INIT ( TIMER, timer);
    ALTERA_AVALON_JTAG_UART_INIT ( JTAG_UART, jtag_uart);
    ALTERA_AVALON_PERFORMANCE_COUNTER_INIT ( PERFORMANCE_COUNTER, performance_counter);
    ALTERA_AVALON_SYSID_QSYS_INIT ( SYSID, sysid);
    ALTERA_UP_AVALON_CHARACTER_LCD_INIT ( CHAR_LCD, char_lcd);
    ALTERA_UP_AVALON_PARALLEL_PORT_INIT ( GREEN_LEDS, green_leds);
    ALTERA_UP_AVALON_PARALLEL_PORT_INIT ( HEX3_HEX0, HEX3_HEX0);
    ALTERA_UP_AVALON_PARALLEL_PORT_INIT ( HEX7_HEX4, HEX7_HEX4);
    ALTERA_UP_AVALON_PARALLEL_PORT_INIT ( PUSHBUTTONS, pushbuttons);
    ALTERA_UP_AVALON_PARALLEL_PORT_INIT ( RED_LEDS, red_leds);
    ALTERA_UP_AVALON_PARALLEL_PORT_INIT ( SWITCHES, switches);
}
