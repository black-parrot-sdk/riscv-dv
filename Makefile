
BSG_CADENV_DIR ?=
-include $(BSG_CADENV_DIR)/cadenv.mk

export RISCV_GCC     ?= $(BP_EXTERNAL_DIR)/bin/$(CROSS_COMPILE)gcc
export RISCV_OBJCOPY ?= $(BP_EXTERNAL_DIR)/bin/$(CROSS_COMPILE)objcopy


generate.%:
	$(PYTHON) run.py --steps gen,gcc_compile --simulator vcs --iterations 1 -o out/ \
		-ct user_extension -cs user_extension -tn $* --isa rv64gc --mabi lp64

clean:
	rm -rf out*
	rm -rf ucli*
