# A puzzle game for the C64
A game for the Commodore 64 that is similar to 2048. Currently the game is playable but some 
functionality is missing or lacking. It has to be assembled with the `ACME` macro assembler. 
It also uses the `c1541` tool delivered with the `VICE` emulator to create the disk image. 

The makefile creates a D64 disk image (`t2048.d64`) that can be loaded by C64 emulators. Use 
`LOAD "T2048",8,1` and then `SYS 49152` to run the game.

The game itself defaults to keyboard control. If you `POKE` a nonzero value to the address 
`USE_JOYSTICK` then a joystick in port 2 is used instead. Here is a descrption of the controls:

| Operation | Keypress | Joystick |
|-----------|----------|----------|
| Shift playfield up | `W` | Up |
| Shift playfield down | `S` | Down |
| Shift playfield left | `A` | Left |
| Shift playfield right | `D` | Right |
| Quit game | `K` | Fire |
