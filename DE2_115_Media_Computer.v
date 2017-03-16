
module DE2_115_Media_Computer (
	// Entradas
	CLOCK_50,
	TD_CLK27,
	KEY,
	SW,

	//  Comunicaci�n
	UART_RXD,
	
	// Audio
	AUD_ADCDAT,

	// Memoria Flash 
	FL_RY,

	//Memoria EPCS
	DATA0,

/*****************************************************************************/
	// Bidireccionales
	GPIO,

	// Memoria (SRAM)
	SRAM_DQ,
	
	// Memoria (SDRAM)
	DRAM_DQ,

	// Memoria Flash 
	FL_DQ,

	// Puerto PS2
	PS2_KBCLK,
	PS2_KBDAT,
	PS2_MSCLK,
	PS2_MSDAT,
	
	// Audio
	AUD_BCLK,
	AUD_ADCLRCK,
	AUD_DACLRCK,
	
	// LCD  16x2
	LCD_DATA,

	// Configuraci�n AV
	I2C_SDAT,
	
/*****************************************************************************/
	// Salidas
	TD_RESET_N,
	
	// 	Simples
	LEDG,
	LEDR,

	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4,
	HEX5,
	HEX6,
	HEX7,
	
	// 	Memoria (SRAM)
	SRAM_ADDR,

	SRAM_CE_N,
	SRAM_WE_N,
	SRAM_OE_N,
	SRAM_UB_N,
	SRAM_LB_N,
	
	//  Comunicaci�n
	UART_TXD,
	
	// Memoria (SDRAM)
	DRAM_ADDR,
	DRAM_BA,
	DRAM_CAS_N,
	DRAM_RAS_N,
	DRAM_CLK,
	DRAM_CKE,
	DRAM_CS_N,
	DRAM_WE_N,
	DRAM_DQM,

	// Memoria Flash 
	FL_ADDR,
	FL_CE_N,
	FL_OE_N,
	FL_RST_N,
	FL_WE_N,
	FL_WP_N,
	
	// Audio
	AUD_XCK,
	AUD_DACDAT,
	
	// VGA
	VGA_CLK,
	VGA_HS,
	VGA_VS,
	VGA_BLANK_N,
	VGA_SYNC_N,
	VGA_R,
	VGA_G,
	VGA_B,

	// LCD 16x2
	LCD_ON,
	LCD_BLON,
	LCD_EN,
	LCD_RS,
	LCD_RW,
	
	// Configuraci�n AV
	I2C_SCLK,
	
	//Memoria EPCS
    DCLK,
    DATA1,
    FLASH_nCE,
	
);

/*****************************************************************************
 *                      Declaraciones de Parametros                          *
 *****************************************************************************/


/*****************************************************************************
 *                       Declaraciones de Puertos                            *
 *****************************************************************************/
// Entradas
input				CLOCK_50;
input				TD_CLK27;
input		[ 3: 0]	KEY;
input		[17: 0]	SW;

//  Comunicaci�n
input				UART_RXD;

//  Audio
input				AUD_ADCDAT;

// Memoria Flash 
input		      	FL_RY;

//  Memoria EPCS
input				DATA0;

/*****************************************************************************/
// Bidireccionales
inout		[35: 0]	GPIO;

// 	Memoria (SRAM)
inout		[15: 0]	SRAM_DQ;

//  Memoria (SDRAM)
inout		[31: 0]	DRAM_DQ;

// Memoria Flash 
inout		[ 7:0]	FL_DQ;

//  Puerto PS2
inout				PS2_KBCLK;
inout				PS2_KBDAT;
inout				PS2_MSCLK;
inout				PS2_MSDAT;

//  Audio
inout				AUD_BCLK;
inout				AUD_ADCLRCK;
inout				AUD_DACLRCK;

//  Configuraci�n AV
inout				I2C_SDAT;

//  LCD 16x2
inout		[ 7: 0]	LCD_DATA;

/*****************************************************************************/
// Salidas
output				TD_RESET_N;

// 	Simples
output		[ 8: 0]	LEDG;
output		[17: 0]	LEDR;

output		[ 6: 0]	HEX0;
output		[ 6: 0]	HEX1;
output		[ 6: 0]	HEX2;
output		[ 6: 0]	HEX3;
output		[ 6: 0]	HEX4;
output		[ 6: 0]	HEX5;
output		[ 6: 0]	HEX6;
output		[ 6: 0]	HEX7;

// 	Memoria (SRAM)
output		[19: 0]	SRAM_ADDR;
output				SRAM_CE_N;
output				SRAM_WE_N;
output				SRAM_OE_N;
output				SRAM_UB_N;
output				SRAM_LB_N;

//  Comunicaci�n
output				UART_TXD;

//  Memoria (SDRAM)
output		[12: 0]	DRAM_ADDR;

output		[ 1: 0]	DRAM_BA;
output				DRAM_CAS_N;
output				DRAM_RAS_N;
output				DRAM_CLK;
output				DRAM_CKE;
output				DRAM_CS_N;
output				DRAM_WE_N;
output		[ 3: 0]	DRAM_DQM;

// Memoria Flash 
output		[22:0]	FL_ADDR;
output		        FL_CE_N;
output		        FL_OE_N;
output		        FL_RST_N;
output		        FL_WE_N;
output		        FL_WP_N;

//  Audio
output				AUD_XCK;
output				AUD_DACDAT;

//  VGA
output				VGA_CLK;
output				VGA_HS;
output				VGA_VS;
output				VGA_BLANK_N;
output				VGA_SYNC_N;
output		[ 7: 0]	VGA_R;
output		[ 7: 0]	VGA_G;
output		[ 7: 0]	VGA_B;

//  LCD 16x2
output				LCD_ON;
output				LCD_BLON;
output				LCD_EN;
output				LCD_RS;
output				LCD_RW;

//  Configuraci�n AV
output				I2C_SCLK;

//  Memoria EPCS
output			    DCLK;
output			    DATA1;
output			    FLASH_nCE;
	

/*****************************************************************************
 *                            L�gica Combinacional                           *
 *****************************************************************************/

// Asignaciones a Salidadas
assign TD_RESET_N	= 1'b1;
assign GPIO[ 0]		= 1'bZ;
assign GPIO[ 2]		= 1'bZ;
assign GPIO[16]		= 1'bZ;
assign GPIO[18]		= 1'bZ;

// Configuraci�n Flash
assign	FL_RST_N = KEY[0];
assign	FL_WP_N = 1'b1;

/*****************************************************************************
 *                              Modulos Internos                             *
 *****************************************************************************/
ejer2 ejer (
        .clk_50_in_clk                             (CLOCK_50),                             //                           clk_50_in.clk
        .clk_27_in_clk                             (TD_CLK27),                             //                           clk_27_in.clk
        .reset_bridge_in_reset_n                   (KEY[0]),                   //                     reset_bridge_in.reset_n
        .sys_clk_out_clk                           (),                           //                         sys_clk_out.clk
        .sdram_clk_out_clk                         (DRAM_CLK),                         //                       sdram_clk_out.clk
        .vga_clk_out_clk                           (),                           //                         vga_clk_out.clk
        .sdram_out_addr                            (DRAM_ADDR),                            //                           sdram_out.addr
        .sdram_out_ba                              (DRAM_BA),                              //                                    .ba
        .sdram_out_cas_n                           (DRAM_CAS_N),                           //                                    .cas_n
        .sdram_out_cke                             (DRAM_CKE),                             //                                    .cke
        .sdram_out_cs_n                            (DRAM_CS_N),                            //                                    .cs_n
        .sdram_out_dq                              (DRAM_DQ),                              //                                    .dq
        .sdram_out_dqm                             (DRAM_DQM),                             //                                    .dqm
        .sdram_out_ras_n                           (DRAM_RAS_N),                           //                                    .ras_n
        .sdram_out_we_n                            (DRAM_WE_N),                            //                                    .we_n
        .flash_bridge_out_tcm_chipselect_out       (FL_CE_N),       //                    flash_bridge_out.tcm_chipselect_out
        .flash_bridge_out_tcm_address_out          (FL_ADDR),          //                                    .tcm_address_out
        .flash_bridge_out_tcm_write_out            (FL_WE_N),            //                                    .tcm_write_out
        .flash_bridge_out_tcm_read_out             (FL_OE_N),             //                                    .tcm_read_out
        .flash_bridge_out_tcm_data_out             (FL_DQ),             //                                    .tcm_data_out
        .red_leds_external_interface_out_export    (LEDR),    //     red_leds_external_interface_out.export
        .green_leds_external_interface_out_export  (LEDG),  //   green_leds_external_interface_out.export
        .hex3_hex0_external_interface_out_HEX0     (HEX0),     //    hex3_hex0_external_interface_out.HEX0
        .hex3_hex0_external_interface_out_HEX1     (HEX1),     //                                    .HEX1
        .hex3_hex0_external_interface_out_HEX2     (HEX2),     //                                    .HEX2
        .hex3_hex0_external_interface_out_HEX3     (HEX3),     //                                    .HEX3
        .hex7_hex4_external_interface_out_HEX4     (HEX4),     //    hex7_hex4_external_interface_out.HEX4
        .hex7_hex4_external_interface_out_HEX5     (HEX5),     //                                    .HEX5
        .hex7_hex4_external_interface_out_HEX6     (HEX6),     //                                    .HEX6
        .hex7_hex4_external_interface_out_HEX7     (HEX7),     //                                    .HEX7
        .switches_external_interface_out_export    (SW),    //     switches_external_interface_out.export
        .pushbuttons_external_interface_out_export ({KEY[3:1],1'b1}), //  pushbuttons_external_interface_out.export
        .char_lcd_external_interface_out_DATA      (LCD_DATA),      //     char_lcd_external_interface_out.DATA
        .char_lcd_external_interface_out_ON        (LCD_ON),        //                                    .ON
        .char_lcd_external_interface_out_BLON      (LCD_BLON),      //                                    .BLON
        .char_lcd_external_interface_out_EN        (LCD_EN),        //                                    .EN
        .char_lcd_external_interface_out_RS        (LCD_RS),        //                                    .RS
        .char_lcd_external_interface_out_RW        (LCD_RW),        //                                    .RW          
);

endmodule