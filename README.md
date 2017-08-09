# qubes-dwm

Qubes OS patch for dwm 6.1 (http://dwm.suckless.org).

Topbar and border color of windows are colored according domain color. Furthermore window title include domain name in bracket, accordinf to https://qubes-os.org/doc/gui.

# dmenu patch
You can download a patch for dmenu 4.7 at https://github.com/raffaeleflorio/qubes-dmenu

# Installation instruction
Clone this repo in a vm:
`$ git clone https://github.com/raffaeleflorio/qubes-dwm.git`
Check signature (you can get my pgp key from https://raffaeleflorio.github.io or from pgp.mit.edu, of course check its fingerprint):
`$ git log --show-signature -1`

Clone dwm in a vm. The code with various clone urls is here: http://git.suckless.org/dwm

Third copy the patch in dwm directory:
`$ cp qubes-dwm/dwm-6.1.patch dwm/`

Apply the patch:
```
$ cd dwm
$ make config.h
$ git apply dwm/dwm-6.1.patch
```

Install dependecies and compile dwm:
```
# dnf install $(cat dependencies)
$ make
```

Copy compiled dwm and set executable bit to Dom0:
```
Dom0# qvm-run --pass-io <vmname> "cat /path/to/dwm/dwm" > /usr/local/bin/dwm
Dom0# chmod u+x /usr/local/bin/dwm
```

Copy qubes-dwm/dwm.desktop to dom0:
`Dom0# qvm-run --pass-io <vmname> "cat /path/to/qubes-dwm/dwm.desktop" > /usr/share/xsessions/dwm.desktop`

Log out, choose dwm as session, log in and use it!

If you encounter some problem, contact me!