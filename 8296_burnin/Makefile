
8296_check: 8296_burnin.a65
	xa -M -o $@ $<
	hexdump -C $@ > $@.hex
	diff -u $@.hex "8296 burnin.hex"
	rm $@ $@.hex

csa_burnin: csa_burnin.a65
	xa -M -o $@ $<
	hexdump -C $@ > $@.hex
	diff -u $@.hex "8296 burnin.hex"
