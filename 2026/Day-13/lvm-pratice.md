Day 13 - Linux Volume Management (LVM)

1. Introduction to LVM

2. LVM ka full form Logical Volume Management hai.

3. Linux me storage ko flexible tarike se manage karne ke liye use hota hai.

4. LVM ki help se:
   
   - Storage size increase kar sakte hain
   - Multiple disks combine kar sakte hain
   - Logical volumes create kar sakte hain
   - Dynamic storage management kar sakte hain

5. LVM Structure

6. Disk
   
   - Actual storage device
   - Example:
     /dev/sda
     /dev/sdb

7. Physical Volume (PV)
   
   - Disk ko LVM ke liye prepare karta hai

8. Volume Group (VG)
   
   - Multiple PV ko combine karke storage pool banata hai

9. Logical Volume (LV)
   
   - Actual usable storage
   - Partition ki tarah use hota hai

Flow:

Disk → PV → VG → LV

3. Commands Used

4. sudo -i

5. dd if=/dev/zero of=/tmp/disk1.img bs=1M count=1024

6. losetup -fP /tmp/disk1.img

7. losetup -a

8. lsblk

9. pvcreate /dev/loop0

10. pvs

11. vgcreate devops-vg /dev/loop0

12. vgs

13. lvcreate -L 500M -n app-data devops-vg

14. lvs

15. mkfs.ext4 /dev/devops-vg/app-data

16. mkdir -p /mnt/app-data

17. mount /dev/devops-vg/app-data /mnt/app-data

18. df -h

19. touch /mnt/app-data/test.txt

20. lvextend -L +200M /dev/devops-vg/app-data

21. resize2fs /dev/devops-vg/app-data

22. Practical Steps

23. Switch to Root User

Command:
sudo -i

Explanation:

- Admin/root access lene ke liye use hota hai
- Storage management ke liye root permission required hoti hai

2. Create Virtual Disk

Command:
dd if=/dev/zero of=/tmp/disk1.img bs=1M count=1024

Explanation:

- 1GB ki fake virtual disk create karta hai

Breakdown:

- if=/dev/zero
  
  - Zero data use karta hai

- of=/tmp/disk1.img
  
  - Output file ka naam

- bs=1M
  
  - 1MB block size

- count=1024
  
  - 1024 blocks create karta hai

Calculation:
1024 × 1MB = 1GB

3. Attach Virtual Disk

Command:
losetup -fP /tmp/disk1.img

Explanation:

- Virtual disk ko Linux me real disk ki tarah attach karta hai

4. Check Loop Device

Command:
losetup -a

Explanation:

- Loop devices check karta hai

Example Output:
/dev/loop0

5. Check Storage Devices

Command:
lsblk

Explanation:

- System ki saari disks aur partitions show karta hai

6. Create Physical Volume

Command:
pvcreate /dev/loop0

Explanation:

- Loop device ko LVM Physical Volume banata hai

7. Check Physical Volumes

Command:
pvs

Explanation:

- Physical Volumes show karta hai

8. Create Volume Group

Command:
vgcreate devops-vg /dev/loop0

Explanation:

- Volume Group create karta hai

Breakdown:

- vgcreate
  
  - Volume Group create karta hai

- devops-vg
  
  - Volume Group name

- /dev/loop0
  
  - Physical Volume name

9. Check Volume Groups

Command:
vgs

Explanation:

- Volume Groups show karta hai

10. Create Logical Volume

Command:
lvcreate -L 500M -n app-data devops-vg

Explanation:

- 500MB ka Logical Volume create karta hai

Breakdown:

- lvcreate
  
  - Logical Volume create karta hai

- -L 500M
  
  - Volume size

- -n app-data
  
  - Logical Volume name

- devops-vg
  
  - Volume Group name

11. Check Logical Volumes

Command:
lvs

Explanation:

- Logical Volumes show karta hai

12. Create Filesystem

Command:
mkfs.ext4 /dev/devops-vg/app-data

Explanation:

- ext4 filesystem create karta hai
- Filesystem storage ko usable banata hai

13. Create Mount Directory

Command:
mkdir -p /mnt/app-data

Explanation:

- Mount point directory create karta hai

14. Mount Logical Volume

Command:
mount /dev/devops-vg/app-data /mnt/app-data

Explanation:

- Logical Volume ko mount karta hai

15. Check Disk Usage

Command:
df -h

Explanation:

- Storage usage show karta hai

16. Create Test File

Command:
touch /mnt/app-data/test.txt

Explanation:

- Empty test file create karta hai
- Storage working verify karta hai

17. Extend Logical Volume

Command:
lvextend -L +200M /dev/devops-vg/app-data

Explanation:

- Logical Volume size increase karta hai

Example:
500MB → 700MB

18. Resize Filesystem

Command:
resize2fs /dev/devops-vg/app-data

Explanation:

- Filesystem resize karta hai
- Increased storage usable banata hai

5. Important Commands Revision

6. pvcreate
   
   - Physical Volume create karta hai

7. vgcreate
   
   - Volume Group create karta hai

8. lvcreate
   
   - Logical Volume create karta hai

9. mkfs.ext4
   
   - Filesystem create karta hai

10. mount
    
    - Storage mount karta hai

11. lvextend
    
    - Logical Volume size increase karta hai

12. resize2fs
    
    - Filesystem resize karta hai

13. lsblk
    
    - Storage devices show karta hai

14. df -h
    
    - Disk usage show karta hai

15. Conclusion

16. Virtual disk create ki

17. Physical Volume create ki

18. Volume Group create ki

19. Logical Volume create ki

20. Filesystem create ki

21. Logical Volume mount kiya

22. Storage extend ki

