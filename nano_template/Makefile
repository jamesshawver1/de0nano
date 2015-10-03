current_dir=$(shell basename $(CURDIR))
export
syn: clean
	$(MAKE) -C quartus
flash:
	$(MAKE) program -C quartus
clean:
	$(MAKE) clean -C quartus
timing:
	$(MAKE) sta -C quartus

