

all: pet_burnin romcheck

pet_burnin: pet_burnin.a65 *.a65 */*.a65
	xa -M -l $@.lab -o $@ $<

pet_burnin.hex: 
	hexdump -C $@ > $@.hex
	#diff -u $@.hex ../8296_burnin/8296\ burnin.hex

romcheck: romcheck.c
	cc -Wall -pedantic -o $@ $<

clean:
	rm -f pet_burnin.lab romcheck

