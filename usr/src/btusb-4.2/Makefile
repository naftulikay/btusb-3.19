KERNEL_VERSION=$(shell uname -r)
KERNEL_MODULES=/lib/modules/$(KERNEL_VERSION)/build

obj-m += btusb.o

all:
	$(MAKE) -C $(KERNEL_MODULES) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNEL_MODULES) M=$(PWD) clean
