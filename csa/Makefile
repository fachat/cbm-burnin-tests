

csa_burnin: csa_burnin.a65 test_*.a65 mod_*.a65
	xa -M -l $@.lab -o $@ $<

csa_burnin.hex: 
	hexdump -C $@ > $@.hex
	#diff -u $@.hex ../8296_burnin/8296\ burnin.hex

clean:
	rm -f csa_burnin.lab

