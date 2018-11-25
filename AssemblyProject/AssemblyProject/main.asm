start:


ldi r16, 5;;countdown time
out ddrb, r16; display time at port B


;initialization for reading input from buttons
ldi		r20, 0x00
out		ddrc, r20 ;set port c to input
ldi		r20, 0xff
out     portc, r20 




;button codes
ldi r26,0b0000_1000;stop countdown/beeping
ldi r28,0b0000_0100;start countdown



 

startloop:; include inc/dec/start(loop)

in r27, pinc  ;read from port c
com r27
cp r27,r28
breq countdown

out portb, r16

countdown:

	;check if cancel button pressed (should hold at least 1 sec)
	in		r25, pinc	
    com     r25         
	cp r25,r26
	breq start


	out portb, r16      ; display countdown value
    call delay          ; delaying
	dec r16             ; decrease 1 second
	brne countdown      ; continue countdown if time>0

out portb, r16


beep:
	
	;check if cancel button pressed
	in		r25, pinc	
    com     r25       
	cp r25,r26
	breq start


	ldi r22, 0b1111_1111
	out ddra, r22
	out porta, r22
	call short_delay  
	ldi r22, 0b0000_0000
	out ddra, r22
	out porta, r22
	call short_delay  
	jmp beep



short_delay:
	ldi r17, 0x5
sdelay_outer:
	ldi r18, 0xff
sdelay_inner:
	ldi r19, 0xff
sdelay_most_inner:
	dec r19
	brne sdelay_most_inner
	dec r18
	brne sdelay_inner
	dec r17
	brne sdelay_outer
	ret

	
delay:
	ldi r17, 0x65
delay_outer:
	ldi r18, 0xff
delay_inner:
	ldi r19, 0xff
delay_most_inner:
	dec r19
	brne delay_most_inner
	dec r18
	brne delay_inner
	dec r17
	brne delay_outer
	ret

