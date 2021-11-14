# On MacOS use make MAC2048=1
# On Linux simply use make

all: t2048 t2048.d64

ifdef MAC2048
ACME=../acme/acme
C1541=/Applications/vice-gtk3-3.5/bin/c1541
WORKDIR=/Users/martin/data/c64_2048
else
ACME=acme
C1541=c1541
WORKDIR=.
endif

clean:
	rm t2048
	rm t2048.d64
	rm t2048.txt

t2048: t2048.a t2048draw.a arith16.a tests.a random.a font.a timer_interrupt.a beep.a
	$(ACME) -l t2048.txt t2048.a

t2048.d64: t2048
	$(C1541) -format t2048,2K d64 $(WORKDIR)/t2048.d64 -write $(WORKDIR)/t2048

run: t2048.d64
	x64sc t2048.d64