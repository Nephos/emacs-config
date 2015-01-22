INCLUDE_PATH    := ./src
SOURCE_PATH     := ./src
DEPENDENCY_PATH := ./src/dep
OBJECT_PATH     := ./src/obj

PROGRAM_NAME    := clang-complete
LLVM_CONFIG     := llvm-config

LLVM_CXX_FLAGS	= $(filter-out -Wcovered-switch-default,$(shell $(LLVM_CONFIG) --cflags))
LLVM_LD_FLAGS	= $(filter-out -Wcovered-switch-default,$(shell $(LLVM_CONFIG) --ldflags))

LDLIBS := $(LLVM_LD_FLAGS) -lclang
CFLAGS += -std=c99 $(LLVM_CXX_FLAGS) -Wall -Wextra -pedantic -O3 -Wno-unused-result -Wno-pointer-sign -Wno-unused-parameter -march=native


include makefile.mk
