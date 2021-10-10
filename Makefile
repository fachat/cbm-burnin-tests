

cbm_burnin: cbm_burnin.a65 test_*.a65 mod_*.a65
	xa -M -l $@.lab -o $@ $<

cbm_burnin.hex: 
	hexdump -C $@ > $@.hex
	#diff -u $@.hex ../8296_burnin/8296\ burnin.hex

clean:
	rm -f cbm_burnin.lab

