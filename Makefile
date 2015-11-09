SUBDIRS=chiark-cryptdisk

PKG=chiark-cryptdisk
pfx=$(CURDIR)/debian/$(PKG)

all:

%:
	set -e; for s in $(SUBDIRS); do \
		$(MAKE) -C $$s $@ \
			prefix=$(pfx) \
			libdir=$(pfx)/usr/lib/chiark-cryptdisk \
			sbindir=$(pfx)/usr/sbin \
			mandir=$(pfx)/usr/share/man \
			; done

