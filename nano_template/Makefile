SRCS=../rtl/top_level.sv
current_dir=$(shell basename $(CURDIR))
export
syn:
	$(MAKE) -C quartus
flash:
	$(MAKE) program -C quartus
clean:
	$(MAKE) clean -C quartus
timing:
	$(MAKE) sta -C quartus

