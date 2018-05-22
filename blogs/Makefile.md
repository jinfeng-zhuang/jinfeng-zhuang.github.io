# Makefile Template

The ARCH related package should contain a local configuration for build, the other packages should be common for all the platforms.

Makefile

	OBJS += main.o
	OBJS += test.o
	OBJS += a.o

	include Makefile.build
	include Makefile.local # for local build

Makefile.build

	main: $(OBJS)
		gcc -o $@ $^

	%.o:
		gcc -c $^

	%.d: %.c
		gcc -MM $< > $@

	%.d: %.S
		gcc -MM $< > $@

	-include $(OBJS:.o=.d)

	clean:
		rm -f *.o *.d

Makefile.local

	CC = arm-none-eabi-gcc
	RM = rm

