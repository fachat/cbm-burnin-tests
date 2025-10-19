
PRGS=romchk

all: pet_burnin romcheck pet_burnin_rom

pet_burnin: pet_burnin.a65 *.a65 */*.a65
	xa -w -XMASM -l $@.lab -o $@ $<

pet_burnin_rom: pet_burnin.a65 *.a65 */*.a65
	xa -w -XMASM -DROM -l $@.lab -o $@ $<

pet_burnin.hex: 
	hexdump -C $@ > $@.hex
	#diff -u $@.hex ../8296_burnin/8296\ burnin.hex

romcheck: romcheck.c
	cc -Wall -pedantic -o $@ $<

${PRGS}: % : %.lst
	petcat -w40 -o $@ $<

clean:
	rm -f pet_burnin.lab romcheck

