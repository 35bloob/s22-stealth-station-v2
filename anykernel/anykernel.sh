### AnyKernel3 Ramdisk Mod Script
## OpenSource MIT License

#### AnyKernel setup
# global properties
properties() { '
kernel.string=StealthStation-V25 for Samsung Galaxy S22
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=r0q
device.name2=SM-S901E
device.name3=SM-S901B
device.name4=SM-S9010
device.name5=SM-S901N
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; }

# shell variables
BLOCK=/dev/block/bootdevice/by-name/boot;
IS_SLOT_DEVICE=1;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

#### AnyKernel methods (DO NOT CHANGE)
# import patcher functions
. tools/ak3-core.sh;

#### AnyKernel install
dump_boot;

# (Minimal clean flash for modern Samsung layout - no legacy Nexus ramdisk edits)

write_boot;
#### end install
