;Punem 5 v la portul b7;


ldi r16, 3
out ddrb, r16 


loop:
	out portb, r16      ; writing value to port
    call delay          ; delaying
	dec r16             ; decrement counter
	brne loop           ; if counter not equals 0 jump to beginning of loop

out portb, r16


beep:
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
	ldi r17, 0x10
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

