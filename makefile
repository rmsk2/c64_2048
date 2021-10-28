all: t2048 t2048.d64

clean:
	rm t2048
	rm t2048.d64

t2048: t2048.a
	acme -l t2048a.txt t2048.a

t2048.d64: t2048
	c1541 -format t2048,2K d64 t2048.d64 -write t2048

