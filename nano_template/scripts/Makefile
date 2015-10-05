syn:
	$(MAKE) syn -C ..
flash:
	$(MAKE) flash -C ..
clean:
	$(MAKE) clean -C ..
	rm design_files.f
timing:
	$(MAKE) sta -C ..
get_inst:
	cat design_files.f | python ../../../get_inst.py 
design_files.f:
	find ../rtl -type f | grep -v .bak | grep \.sv > design_files.f
