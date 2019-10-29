
export RISCV_GCC     ?= $(BP_EXTERNAL_DIR)/bin/riscv64-unknown-elf-gcc
export RISCV_OBJCOPY ?= $(BP_EXTERNAL_DIR)/bin/riscv64-unknown-elf-objcopy

#generate.%:
#	$(PYTHON) run.py --test $* --steps gen,gcc_compile --simulator vcs --iterations 1 -o out/ \
		-ct user_extension --isa rv64i --mabi lp64

generate.%:
	$(PYTHON) run.py --steps gen,gcc_compile --simulator vcs --iterations 1 -o out/ \
		-ct user_extension --isa rv64i --mabi lp64

clean:
	rm -rf out*
	rm -rf ucli*
