```
# Compile loki
---------------
$ make
```

```
# Usage
-------------------------
**Example of boot image patch:**
$ ./loki_tool patch boot aboot.img boot.img boot.lok

**Patch a partition image:**
$ ./loki_tool [patch] [boot | recovery] [aboot.img] [in.img] [out.lok]

**Flash loki image to boot or recovery partition:**
$ ./loki_tool [flash] [boot | recovery] [in.lok]

**Find aboot image offset:**
$ ./loki_tool [find] [aboot.img]

**Revert Loki patching:**
$ ./loki_tool [unlok] [in.lok] [out.img]
```

```
# Alternate Usage
Allows loki to run from anywhere without the loki binary being present
---------------------------
1. Rename loki_tool to loki
2. Place loki in /usr/local/bin in your PC (root privileges required)
3. chmod a+x loki
---------------------------
**Example of boot image patch:**
$ loki patch boot aboot.img boot.img boot.lok

**Patch a partition image:**
$ loki [patch] [boot | recovery] [aboot.img] [in.img] [out.lok]

**Flash loki image to boot or recovery partition:**
$ loki [flash] [boot | recovery] [in.lok]

**Find aboot image offset:**
$ loki [find] [aboot.img]

**Revert Loki patching:**
$ loki [unlok] [in.lok] [out.img]
```
