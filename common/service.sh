#
#	Thanks to @d1fakt & @DESIRE_TM
#   for original code. And Magisk
#	Module Template for snippets
#

#> Wait for system to complete boot to proceed
MODDIR=${0%/*}
until [ `getprop sys.boot_completed`. = 1. ]
	    do sleep 1
done

#> Remove zram before making changes
swapoff /dev/block/zram0

#> Reset ZRAM
echo "1" > /sys/block/zram0/reset

#> Changing zram disk size
echo "0" > /sys/block/zram0/disksize
echo "8" > /sys/block/zram0/max_comp_streams
chmod 644 /sys/block/zram0/disksize
echo '3221225472' > /sys/block/zram0/disksize #> 3G Maybe the most optimal size
chmod 444 /sys/block/zram0/disksize

# Creating and enabling swap in zram
mkswap /dev/block/zram0 > /dev/null 2>&1 #> Make swap
swapon /dev/block/zram0 > /dev/null 2>&1 #> Enable swap 
