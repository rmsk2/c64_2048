# A puzzle game for the C64
A game for the Commodore 64 that is similar to 2048. All gameplay features are implemented. 
Development will now focus on making the game look nicer (to the best of my abilities ;-)). 
It has to be assembled with the `ACME` macro assembler. It also uses the `c1541` tool delivered 
with the `VICE` emulator to create the disk image. The diskimage `basictest.d64` contains some 
`BASIC` programs that allow to interactively test some of the assembler routines. 

The makefile creates a D64 disk image (`t2048.d64`) that can be loaded by C64 emulators or mounted
on a real machine using SD2IEC. Use `LOAD "T2048",8` and then `RUN` to run the game.

The following BASIC program is used to start the game. If you want to change the drive number from
to 8 to 9 modify it accordingly.

```
10 POKE 2075,8
20 SYS 2076
```

After starting the game you can choose whether you want to control the game by keyboard or joystick.
Here is a description of the controls:

| Operation | Keypress | Joystick |
|-----------|----------|----------|
| Shift playfield up | `W` | Up |
| Shift playfield down | `S` | Down |
| Shift playfield left | `A` | Left |
| Shift playfield right | `D` | Right |
| Undo last move | `U` | - |
| Quit game | `K` | Fire |

The game is won by the player when a tile with the value 2 to the power of eleven or 2048 appears on 
the playing field. The game is over if no valid moves are left. A move is valid, when it changes the 
contents of the playing field either by moving at least one tile or by creating at least a new tile by 
merging two adjacent (in the direction of the move/shift chosen by the player) tiles of the same value.
By pressing the `U` key you can undo the last valid move. 

Releases include the disk image that can be used in emulators so that you do not have to assemble the code 
yourself. The software has been successfully tested on a real machine.

Title screen:![](/t2048.png?raw=true "Title screen of game")

Screenshot:![](/zwei_hoch_title.png?raw=true "Screenshot of game")