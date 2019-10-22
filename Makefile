
export RISCV_GCC     ?= $(BP_EXTERNAL_DIR)/bin/riscv64-unknown-elf-gcc
export RISCV_OBJCOPY ?= $(BP_EXTERNAL_DIR)/bin/riscv64-unknown-elf-objcopy

generate.%:
	$(PYTHON) run.py --test $* --steps gen,gcc_compile --simulator vcs --iterations 1 -o out \
		--isa rv64gc
		#-cs user_extension/riscv_core_setting.sv -tl user_extension/black_parrot_testlist.yaml --isa rv64i

clean:
	rm -rf out*
	rm -rf ucli*
