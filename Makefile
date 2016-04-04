obj-m = vxlan.o

KVERSION = $(shell uname -r)
all:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) modules
	make -C /lib/modules/$(KVERSION)/build M=$(PWD)/bridge modules
clean:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
	make -C /lib/modules/$(KVERSION)/build M=$(PWD)/bridge clean
