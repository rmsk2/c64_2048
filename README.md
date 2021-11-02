# A puzzle game for the C64
A game for the Commodore 64 that is similar to 2048. Currently the game is in principle playable 
but looks totally ugly and some functionality is missing or lacking. It has to be assembled with 
the `ACME` macro assembler. It also uses the `c1541` tool delivered with the `VICE` emulator to 
create the disk image. 

The makefile creates a D64 disk image (`t2048.d64`) that can be loaded by C64 emulators. Use 
`LOAD "T2048",8,1` and then `SYS 49152` to run the game.
