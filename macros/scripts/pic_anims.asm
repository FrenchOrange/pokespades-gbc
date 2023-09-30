MACRO frame


ENDM

	const_def -1, -1

	const endanim_command ; $ff
MACRO endanim
	db endanim_command
ENDM

	const setrepeat_command ; $fe
MACRO setrepeat
	db setrepeat_command
	db \1 ; amount of times to repeat
ENDM

	const dorepeat_command ; $fd
MACRO dorepeat
	db dorepeat_command
	db \1 ; command offset to jump to
ENDM
