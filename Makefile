# Author: Bandie <bandie@chaospott.de>
# Copyright: Bandie, 2019, GNU-GPLv3
all: 
	@echo "Nothing to make. Please run \"make install\"."
	@exit 0
install:
	@echo "Installing grub-ownership..."
	install -vDm 755 etc/grub.d/000_ownership -t "$(PREFIX)/etc/grub.d/"
	@echo "Appending not existent config keys..."
	./tools/grub_append_cfgkeys -i $(PREFIX)/etc/default/grub
	@echo "DONE!"

uninstall:
	@echo "Remove grub-ownership..."
	rm $(PREFIX)/etc/grub.d/000_ownership
	@echo "Removing entries from config file..."
	./tools/grub_append_cfgkeys -r $(PREFIX)/etc/default/grub
	@echo "DONE!"
