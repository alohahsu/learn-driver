obj-m 			:= 	hello.o
CURRENT_PATH		:=	$(shell pwd)
LINUX_KERNEL		:=	$(shell uname -r)
LINUX_KERNEL_PATH	:=	/usr/src/linux-headers-$(LINUX_KERNEL)
all:
	$(MAKE) -C $(LINUX_KERNEL_PATH) M=$(CURRENT_PATH) modules
clean:
	rm *.ko *.o *.mod *.mod.c *.order *.symvers
