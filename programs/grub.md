set check_signature=no

load_video
set gfxpayload=keep
insmod gzio
insmod part_gpt
insmod fat
set root='hd0,gpt1'
linux   /vmlinuz-linux-lts root=UUID=b640726e-6486-4555-a6dd-c4117bd3afba rw zswap.enabled=0 rootfstype=ext4 loglevel=3 quiet
initrd  /amd-ucode.img /initramfs-linux-lts.img
