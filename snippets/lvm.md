# LVM


## Extend
Show free space in PV

    pvs

extend volume
    
    lvextend -L+20G /dev/mapper/hlm--vg-root

resize xfs while mounted after extending
    
    xfs_growfs -d /dev/centos/root

resize ext4 while mounted after extending

    resize2fs /dev/mapper/hlm--vg-root




