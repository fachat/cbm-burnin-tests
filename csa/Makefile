

csa_burnin: csa_burnin.a65 test_*
	xa -M -l $@.lab -o $@ $<
	hexdump -C $@ > $@.hex
	diff -u $@.hex ../8296_burnin/8296\ burnin.hex

clean:
	rm -f csa_burnin.lab

