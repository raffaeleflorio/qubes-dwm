# qubes-dwm

dwm (https://dwm.suckless.org) for Qubes OS 4.0.x / 4.1.x.

Topbar and border color of windows are colored according domain color. Furthermore window title include domain name in bracket, according to https://qubes-os.org/doc/gui.


# Screenshot
![dwm_screenshot](https://github.com/raffaeleflorio/qubes-dwm/blob/master/screenshots/dwm.png)

# dmenu patch
You can download dmenu for Qubes OS at https://github.com/raffaeleflorio/qubes-dmenu

# Installation
Clone this repo in a vm:
```
$ git clone https://github.com/raffaeleflorio/qubes-dwm.git
```

Check signature (you can get my pgp key from https://raffaeleflorio.github.io or from https://pgp.mit.edu, of course check its fingerprint):
```
$ git log --show-signature -1
```

Install dependencies, apply the patch and build dwm:
```
# make dep
$ make
```

Install in Dom0:
```
Dom0# qvm-run --pass-io <vmname> "cat /path/to/qubes-dwm/dwm/dwm" > /usr/local/bin/dwm
Dom0# chmod u+x /usr/local/bin/dwm
Dom0# qvm-run --pass-io <vmname> "cat /path/to/qubes-dwm/launchdwm" > /usr/local/bin/launchdwm
Dom0# chmod u+x /usr/local/bin/launchdwm
Dom0# qvm-run --pass-io <vmname> "cat /path/to/qubes-dwm/qubes-dmenu-sensible" > /usr/local/bin/qubes-dmenu-sensible
Dom0# chmod u+x /usr/local/bin/qubes-dmenu-sensible
Dom0# qvm-run --pass-io <vmname> "cat /path/to/qubes-dwm/qubes-run-sensible" > /usr/local/bin/qubes-run-sensible
Dom0# chmod u+x /usr/local/bin/qubes-run-sensible
Dom0# qvm-run --pass-io <vmname> "cat /path/to/qubes-dwm/qubes-sensible-vm-settings" > /usr/local/bin/qubes-sensible-vm-settings
Dom0# chmod u+x /usr/local/bin/qubes-sensible-vm-settings
Dom0# qvm-run --pass-io <vmname> "cat /path/to/qubes-dwm/dwm.desktop" > /usr/share/xsessions/dwm.desktop
```

Log out, choose dwm as session, log in and use it!

If you encounter some problems, contact me!
