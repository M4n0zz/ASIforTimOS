/*

TimOS Auto Script Installer - Compatible with EN Red and Blue ONLY


Description
This script targets to the ease of installing one or more scripts into TimOS environment.
It automatically finds and installs new scripts in unused memory.


Instructions
1) Put your script's code under "CustomPayload" section.
2) Compile your script using (Quick)RGBDS.
3) Install the output over NicknameWriter.

The script will automatically calculate the offsets needed for:
- Script selector
- Jump table
- The script itself



Source is compiled with QuickRGBDS
https://github.com/M4n0zz/QuickRGBDS

*/

DEF InstallationAddress = $c8c3

SECTION "AutoScriptInstaller", ROM0

LOAD "Installer", WRAMX[$D8B5]
; ----------- Installer payload ------------ 
Installer:
; find free space in timos
ld hl, $cb49
.loop
ld a, [hld]
cp a, $ff
jr z, .loop
inc hl
inc hl
ld a, h
cp a, $c8
jr nc, .skip
ld hl, $c7ff
.skip
ld [pointers+1], a
ld a, l
ld [pointers], a
push hl

; increse no of scripts
ld hl, $c6e9
ld b, [hl]
ld a, scriptnumber	; calculated in DEF
add a, [hl]
ld [hl], a

; write pointers to the correct position
ld de, $c7c7		; start counting from script #1
.pointerloop
inc e
inc e
dec b
jr nz, .pointerloop

; Copy pointers
ld c, pointerwidth  ; Calculated in DEF - b = 0 from previous operation
ld hl, pointers		; $d8d4	- origin
call $00b5			; CopyData

; Copy payloads
ld c, payloadwidth	; Calculated in DEF
pop de
jp $00b5			; CopyData


; ----------- Payload pointers ------------
pointers:           ; it automatically calculates every script's starting point offsets
db LOW(start),      HIGH(start)
.end
ENDL


LOAD "CustomPayload", WRAM0[InstallationAddress]

start:		; do not replace this

CustomPayload:
; replace with your own payload




end:		; do not replace this
ENDL

	
DEF scriptnumber = (pointers.end - pointers) / 2
DEF pointerwidth = pointers.end - pointers
DEF payloadwidth = end - start

