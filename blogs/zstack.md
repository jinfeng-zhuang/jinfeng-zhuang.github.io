# ZStack

## Overview

* The dependency has completed now
* The packages are platform
* The object files are located in packages, avoid some name conflict
* The workspaces can be distinguished by package which we work on

## Directory

	workspace-x86-core/
		Makefile (auto generated by tool)
		board-qemu-x86/
			README.txt
			debug.sh
			board.lds
			memory_map.h
			irq_map.h
		core-x86/
			README.txt
			Makefile
			start.S
			start.o
		lib-c/
		...

* Board Package: memory layout and symbol layout
* Other Package: symbols set

## Root Makefile

	CC = gcc
	LD = ld
	
	CFLAGS = -g ... // options should be top-level
	LDFLAGS = -T ...

	zstack: lib<package>.a ...
		$(LD) $(LDFLAGS) $@ $^

## Package Makefile

	lib<package>.a: ...
		$(AR) ...
		
	%.o: %.c
		$(CC) $(CFLAGS) $@ $<
	
## Dependency

	DEPEND-ON: x86-core
	
