INCLUDE_PATH    := ./src
SOURCE_PATH     := ./src
DEPENDENCY_PATH := ./src/dep
OBJECT_PATH     := ./src/obj

PROGRAM_NAME    := clang-complete
LLVM_CONFIG     := llvm-config

LDLIBS := $(shell $(LLVM_CONFIG) --ldflags) -lclang
CFLAGS += -std=c99 -I/usr/include  -fPIC -Wall -W -Wno-unused-parameter -Wwrite-strings -Wmissing-field-initializers -pedantic -Wno-long-long -O2 -g -DNDEBUG  -D_GNU_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS -Wall -Wextra -pedantic -O3 -Wno-unused-result -Wno-pointer-sign -Wno-unused-parameter -march=native


include makefile.mk
