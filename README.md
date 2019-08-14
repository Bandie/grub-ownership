# grub-ownership
Show an owner when grub is booting up.

It is looking like this:

```
##########################
# Owner:                 #
# Alex Alexsen <a@a.tld> #
##########################
```


## Installation

```bash
sudo make install
# OR with an autotools like PREFIX:
sudo PREFIX=/another/root make install
```


## Configuration

Edit the file `/etc/default/grub`.

This is an example config

```
# Name and mail address of owner
OWNER="Alex Alexsen <a@a.tld>"

# Amounts of seconds for how long the owner information is displayed. It is skippable via ESC.
OWNER_TIMEOUT=10
```



## Uninstall

```bash
sudo make uninstall
# OR with an autotools like PREFIX:
sudo PREFIX=/another/root make uninstall
```


