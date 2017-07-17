#line 1 "D:/Smart Energy Management System/SEMS_control_program.c"
#line 10 "D:/Smart Energy Management System/SEMS_control_program.c"
sbit lcd_rs at portb.b0;
sbit lcd_en at portb.b1;
sbit lcd_d4 at portb.b2;
sbit lcd_d5 at portb.b3;
sbit lcd_d6 at portb.b4;
sbit lcd_d7 at portb.b5;
sbit lcd_rs_direction at trisb0_bit;
sbit lcd_en_direction at trisb1_bit;
sbit lcd_d4_direction at trisb2_bit;
sbit lcd_d5_direction at trisb3_bit;
sbit lcd_d6_direction at trisb4_bit;
sbit lcd_d7_direction at trisb5_bit;






sbit ldr at rd3_bit;
int t=25;



sbit LED at rc1_bit;
unsigned int entry;
void display();
float dgtl,anlg;
int temp;
void displayTemp();
void ReadTemp();

void main() {

entry=0;
trisc=0x00;
portc=0x00;
trisd=0xff;
portd=0xff;


delay_ms(100);
lcd_init();
adc_init();
lcd_cmd(_lcd_clear);
lcd_cmd(_lcd_cursor_off);
lcd_out(1,1,"Initializing......");
lcd_out(2,1,"Please Wait!!!");
 delay_ms(3000) ;
 lcd_cmd(_lcd_clear);
lcd_out(1,1,"SMART ENERGY MGT");
 lcd_out(2,5,"SYSTEM");
 delay_ms(3000) ;
 lcd_cmd(_lcd_clear);
 lcd_out(1,3,"DESIGNED BY:");
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 lcd_out(1,1,"E.C.E DEPARTMENT");
 lcd_out(2,1," UNIZIK, AWKA") ;
 delay_ms(3000);
 lcd_cmd(_lcd_clear);
 lcd_out(1,3," 2015/2016");
 lcd_out(2,4," SESSION");
 delay_ms(2000);
 lcd_cmd(_lcd_clear);
display();
lcd_out(2,1,"ENTRIES:");
lcd_chr(1,1,'.') ;
lcd_chr_cp('.') ;
lcd_chr_cp('.') ;
lcd_out(1,4,"TEMP:");
lcd_chr(1,13,223);
lcd_chr_cp('C');

for(;;){
 LED =1;
 ReadTemp();
 displayTemp();
 display() ;


 if ( (rd0_bit==0) ){
 do{
 ;
 }while( (rd0_bit==0) );
 do{
 if( (rd1_bit==0) ) {
 do{
 ;
 }while( (rd1_bit==0) );
 entry++;
 if (ldr==1)
  (rc7_bit=1) ;
 else
  (rc7_bit=0) ;

 if(temp>=t){


  (rc4_bit=1) ;
 portc.f5=1;

 }
 else{
  (rc4_bit=0) ;
 portc.f5=0;

 }
 break;
 }
}while(! (rd0_bit==0) );
 }

 else if( (rd1_bit==0)  ){
do{;}
while( (rd1_bit==0) );
 do{
if( (rd0_bit==0) ){
do{;}
while( (rd0_bit==0) );
if(entry>0){
entry--;}
break;
}
}while(! (rd1_bit==0) );
}

if(temp>=t && entry>0){

  (rc4_bit=1) ;

 portc.f5=1;

}
else{
 (rc4_bit=0) ;
portc.f5=0;

}

if(ldr==1) {
 delay_ms(100);
 (rc7_bit=1) ;
}
else
 (rc7_bit=0) ;

if( (entry==0) ){

 (rc7_bit=0) ;
delay_ms(200);
 (rc4_bit=0) ;
portc.f5=0;

}

}}
 void display(){

 char x,y,z;
 x=entry/100;
 y=(entry%100)/10;
 z=entry%10;
 lcd_chr(2,10,48+x);
 lcd_chr(2,11,48+y);
 lcd_chr(2,12,48+z);

 }
 void displayTemp(){
char x;
x=temp/100;
lcd_chr(1,10,48+x);
x=(temp%100)/10;
lcd_chr(1,11,48+x);
x=temp%10;
lcd_chr(1,12,48+x);

}
void ReadTemp() {
 dgtl= adc_read(1);
 anlg= (dgtl*5)/1023;
 temp=anlg*100;

}
