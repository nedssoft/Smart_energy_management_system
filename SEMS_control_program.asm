
_main:

;SEMS_control_program.c,41 :: 		void main() {
;SEMS_control_program.c,43 :: 		entry=0;
	CLRF       _entry+0
	CLRF       _entry+1
;SEMS_control_program.c,44 :: 		trisc=0x00;
	CLRF       TRISC+0
;SEMS_control_program.c,45 :: 		portc=0x00;
	CLRF       PORTC+0
;SEMS_control_program.c,46 :: 		trisd=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;SEMS_control_program.c,47 :: 		portd=0xff;
	MOVLW      255
	MOVWF      PORTD+0
;SEMS_control_program.c,50 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
;SEMS_control_program.c,51 :: 		lcd_init();
	CALL       _Lcd_Init+0
;SEMS_control_program.c,52 :: 		adc_init();
	CALL       _ADC_Init+0
;SEMS_control_program.c,53 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;SEMS_control_program.c,54 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;SEMS_control_program.c,55 :: 		lcd_out(1,1,"Initializing......");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_SEMS_control_program+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SEMS_control_program.c,56 :: 		lcd_out(2,1,"Please Wait!!!");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_SEMS_control_program+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SEMS_control_program.c,57 :: 		delay_ms(3000) ;
	MOVLW      46
	MOVWF      R11+0
	MOVLW      169
	MOVWF      R12+0
	MOVLW      47
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
;SEMS_control_program.c,58 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;SEMS_control_program.c,59 :: 		lcd_out(1,1,"SMART ENERGY MGT");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_SEMS_control_program+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SEMS_control_program.c,60 :: 		lcd_out(2,5,"SYSTEM");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_SEMS_control_program+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SEMS_control_program.c,61 :: 		delay_ms(3000) ;
	MOVLW      46
	MOVWF      R11+0
	MOVLW      169
	MOVWF      R12+0
	MOVLW      47
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
;SEMS_control_program.c,62 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;SEMS_control_program.c,63 :: 		lcd_out(1,3,"DESIGNED BY:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_SEMS_control_program+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SEMS_control_program.c,64 :: 		delay_ms(1000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;SEMS_control_program.c,65 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;SEMS_control_program.c,66 :: 		lcd_out(1,1,"E.C.E DEPARTMENT");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_SEMS_control_program+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SEMS_control_program.c,67 :: 		lcd_out(2,1," UNIZIK, AWKA") ;
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_SEMS_control_program+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SEMS_control_program.c,68 :: 		delay_ms(3000);
	MOVLW      46
	MOVWF      R11+0
	MOVLW      169
	MOVWF      R12+0
	MOVLW      47
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
;SEMS_control_program.c,69 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;SEMS_control_program.c,70 :: 		lcd_out(1,3," 2015/2016");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_SEMS_control_program+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SEMS_control_program.c,71 :: 		lcd_out(2,4," SESSION");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_SEMS_control_program+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SEMS_control_program.c,72 :: 		delay_ms(2000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;SEMS_control_program.c,73 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;SEMS_control_program.c,74 :: 		display();
	CALL       _display+0
;SEMS_control_program.c,75 :: 		lcd_out(2,1,"ENTRIES:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_SEMS_control_program+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SEMS_control_program.c,76 :: 		lcd_chr(1,1,'.') ;
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      46
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;SEMS_control_program.c,77 :: 		lcd_chr_cp('.') ;
	MOVLW      46
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;SEMS_control_program.c,78 :: 		lcd_chr_cp('.') ;
	MOVLW      46
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;SEMS_control_program.c,79 :: 		lcd_out(1,4,"TEMP:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_SEMS_control_program+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SEMS_control_program.c,80 :: 		lcd_chr(1,13,223);//  223 is the ascii for degree
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      13
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;SEMS_control_program.c,81 :: 		lcd_chr_cp('C');
	MOVLW      67
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;SEMS_control_program.c,83 :: 		for(;;){
L_main6:
;SEMS_control_program.c,84 :: 		LED =1;
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
;SEMS_control_program.c,85 :: 		ReadTemp();
	CALL       _ReadTemp+0
;SEMS_control_program.c,86 :: 		displayTemp();
	CALL       _displayTemp+0
;SEMS_control_program.c,87 :: 		display() ;
	CALL       _display+0
;SEMS_control_program.c,90 :: 		if (outer_sensor){
	BTFSC      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main9
;SEMS_control_program.c,91 :: 		do{
L_main10:
;SEMS_control_program.c,93 :: 		}while(outer_sensor);
	BTFSS      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main10
;SEMS_control_program.c,94 :: 		do{
L_main13:
;SEMS_control_program.c,95 :: 		if(inner_sensor) {
	BTFSC      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main16
;SEMS_control_program.c,96 :: 		do{
L_main17:
;SEMS_control_program.c,98 :: 		}while(inner_sensor);
	BTFSS      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main17
;SEMS_control_program.c,99 :: 		entry++;
	INCF       _entry+0, 1
	BTFSC      STATUS+0, 2
	INCF       _entry+1, 1
;SEMS_control_program.c,100 :: 		if (ldr==1)
	BTFSS      RD3_bit+0, BitPos(RD3_bit+0)
	GOTO       L_main20
;SEMS_control_program.c,101 :: 		light_on;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_main21
L_main20:
;SEMS_control_program.c,103 :: 		light_off;
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
L_main21:
;SEMS_control_program.c,105 :: 		if(temp>=t){
	MOVLW      128
	XORWF      _temp+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _t+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main48
	MOVF       _t+0, 0
	SUBWF      _temp+0, 0
L__main48:
	BTFSS      STATUS+0, 0
	GOTO       L_main22
;SEMS_control_program.c,108 :: 		fan_on;
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
;SEMS_control_program.c,109 :: 		portc.f5=1;//DC fan
	BSF        PORTC+0, 5
;SEMS_control_program.c,111 :: 		}
	GOTO       L_main23
L_main22:
;SEMS_control_program.c,113 :: 		fan_off;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
;SEMS_control_program.c,114 :: 		portc.f5=0;
	BCF        PORTC+0, 5
;SEMS_control_program.c,116 :: 		}
L_main23:
;SEMS_control_program.c,117 :: 		break;
	GOTO       L_main14
;SEMS_control_program.c,118 :: 		}
L_main16:
;SEMS_control_program.c,119 :: 		}while(!outer_sensor);
	BTFSC      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main13
L_main14:
;SEMS_control_program.c,120 :: 		}
	GOTO       L_main24
L_main9:
;SEMS_control_program.c,122 :: 		else if(inner_sensor ){
	BTFSC      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main25
;SEMS_control_program.c,123 :: 		do{;}
L_main26:
;SEMS_control_program.c,124 :: 		while(inner_sensor);
	BTFSS      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main26
;SEMS_control_program.c,125 :: 		do{
L_main29:
;SEMS_control_program.c,126 :: 		if(outer_sensor){
	BTFSC      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main32
;SEMS_control_program.c,127 :: 		do{;}
L_main33:
;SEMS_control_program.c,128 :: 		while(outer_sensor);
	BTFSS      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main33
;SEMS_control_program.c,129 :: 		if(entry>0){
	MOVF       _entry+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main49
	MOVF       _entry+0, 0
	SUBLW      0
L__main49:
	BTFSC      STATUS+0, 0
	GOTO       L_main36
;SEMS_control_program.c,130 :: 		entry--;}
	MOVLW      1
	SUBWF      _entry+0, 1
	BTFSS      STATUS+0, 0
	DECF       _entry+1, 1
L_main36:
;SEMS_control_program.c,131 :: 		break;
	GOTO       L_main30
;SEMS_control_program.c,132 :: 		}
L_main32:
;SEMS_control_program.c,133 :: 		}while(!inner_sensor);
	BTFSC      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main29
L_main30:
;SEMS_control_program.c,134 :: 		}
L_main25:
L_main24:
;SEMS_control_program.c,136 :: 		if(temp>=t && entry>0){
	MOVLW      128
	XORWF      _temp+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _t+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main50
	MOVF       _t+0, 0
	SUBWF      _temp+0, 0
L__main50:
	BTFSS      STATUS+0, 0
	GOTO       L_main39
	MOVF       _entry+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main51
	MOVF       _entry+0, 0
	SUBLW      0
L__main51:
	BTFSC      STATUS+0, 0
	GOTO       L_main39
L__main46:
;SEMS_control_program.c,138 :: 		fan_on;
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
;SEMS_control_program.c,140 :: 		portc.f5=1;
	BSF        PORTC+0, 5
;SEMS_control_program.c,142 :: 		}
	GOTO       L_main40
L_main39:
;SEMS_control_program.c,144 :: 		fan_off;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
;SEMS_control_program.c,145 :: 		portc.f5=0;
	BCF        PORTC+0, 5
;SEMS_control_program.c,147 :: 		}
L_main40:
;SEMS_control_program.c,149 :: 		if(ldr==1) {
	BTFSS      RD3_bit+0, BitPos(RD3_bit+0)
	GOTO       L_main41
;SEMS_control_program.c,150 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main42:
	DECFSZ     R13+0, 1
	GOTO       L_main42
	DECFSZ     R12+0, 1
	GOTO       L_main42
	DECFSZ     R11+0, 1
	GOTO       L_main42
;SEMS_control_program.c,151 :: 		light_on;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;SEMS_control_program.c,152 :: 		}
	GOTO       L_main43
L_main41:
;SEMS_control_program.c,154 :: 		light_off;
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
L_main43:
;SEMS_control_program.c,156 :: 		if(nobodyAround){
	MOVLW      0
	XORWF      _entry+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main52
	MOVLW      0
	XORWF      _entry+0, 0
L__main52:
	BTFSS      STATUS+0, 2
	GOTO       L_main44
;SEMS_control_program.c,158 :: 		light_off;
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;SEMS_control_program.c,159 :: 		delay_ms(200);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main45:
	DECFSZ     R13+0, 1
	GOTO       L_main45
	DECFSZ     R12+0, 1
	GOTO       L_main45
	DECFSZ     R11+0, 1
	GOTO       L_main45
	NOP
	NOP
;SEMS_control_program.c,160 :: 		fan_off;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
;SEMS_control_program.c,161 :: 		portc.f5=0;
	BCF        PORTC+0, 5
;SEMS_control_program.c,163 :: 		}
L_main44:
;SEMS_control_program.c,165 :: 		}}
	GOTO       L_main6
L_end_main:
	GOTO       $+0
; end of _main

_display:

;SEMS_control_program.c,166 :: 		void display(){
;SEMS_control_program.c,169 :: 		x=entry/100;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _entry+0, 0
	MOVWF      R0+0
	MOVF       _entry+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      FLOC__display+0
	MOVF       R0+1, 0
	MOVWF      FLOC__display+1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _entry+0, 0
	MOVWF      R0+0
	MOVF       _entry+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
;SEMS_control_program.c,170 :: 		y=(entry%100)/10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      display_y_L0+0
;SEMS_control_program.c,171 :: 		z=entry%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _entry+0, 0
	MOVWF      R0+0
	MOVF       _entry+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      display_z_L0+0
;SEMS_control_program.c,172 :: 		lcd_chr(2,10,48+x);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       FLOC__display+0, 0
	ADDLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;SEMS_control_program.c,173 :: 		lcd_chr(2,11,48+y);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       display_y_L0+0, 0
	ADDLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;SEMS_control_program.c,174 :: 		lcd_chr(2,12,48+z);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       display_z_L0+0, 0
	ADDLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;SEMS_control_program.c,176 :: 		}
L_end_display:
	RETURN
; end of _display

_displayTemp:

;SEMS_control_program.c,177 :: 		void displayTemp(){
;SEMS_control_program.c,179 :: 		x=temp/100;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _temp+0, 0
	MOVWF      R0+0
	MOVF       _temp+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
;SEMS_control_program.c,180 :: 		lcd_chr(1,10,48+x);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	ADDLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;SEMS_control_program.c,181 :: 		x=(temp%100)/10;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _temp+0, 0
	MOVWF      R0+0
	MOVF       _temp+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
;SEMS_control_program.c,182 :: 		lcd_chr(1,11,48+x);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	ADDLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;SEMS_control_program.c,183 :: 		x=temp%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _temp+0, 0
	MOVWF      R0+0
	MOVF       _temp+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
;SEMS_control_program.c,184 :: 		lcd_chr(1,12,48+x);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	ADDLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;SEMS_control_program.c,186 :: 		}
L_end_displayTemp:
	RETURN
; end of _displayTemp

_ReadTemp:

;SEMS_control_program.c,187 :: 		void ReadTemp() {
;SEMS_control_program.c,188 :: 		dgtl= adc_read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVF       R0+0, 0
	MOVWF      _dgtl+0
	MOVF       R0+1, 0
	MOVWF      _dgtl+1
	MOVF       R0+2, 0
	MOVWF      _dgtl+2
	MOVF       R0+3, 0
	MOVWF      _dgtl+3
;SEMS_control_program.c,189 :: 		anlg= (dgtl*5)/1023;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      192
	MOVWF      R4+1
	MOVLW      127
	MOVWF      R4+2
	MOVLW      136
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _anlg+0
	MOVF       R0+1, 0
	MOVWF      _anlg+1
	MOVF       R0+2, 0
	MOVWF      _anlg+2
	MOVF       R0+3, 0
	MOVWF      _anlg+3
;SEMS_control_program.c,190 :: 		temp=anlg*100;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
	MOVF       R0+1, 0
	MOVWF      _temp+1
;SEMS_control_program.c,192 :: 		}
L_end_ReadTemp:
	RETURN
; end of _ReadTemp
