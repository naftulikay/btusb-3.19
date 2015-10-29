KERNEL_VERSION=$(shell uname -r)
KERNEL_MODULES=/lib/modules/$(KERNEL_VERSION)/build

obj-m += btusb.o
 
all:
	make -C $(KERNEL_MODULES) M=$(PWD) modules
 
clean:
	make -C $(KERNEL_MODULES) M=$(PWD) clean
