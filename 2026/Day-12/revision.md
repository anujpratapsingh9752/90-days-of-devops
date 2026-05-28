DAY 12 – LINUX REVISION (DAYS 01–11)

GOAL
- Revise Linux fundamentals
- Practice real terminal commands
- Build confidence through hands-on work

------------------------------------------------------------

1. LINUX BASICS

Commands:
pwd
ls -l
cd
mkdir
touch

What I learned:
- pwd se current directory pata chalta hai
- ls -l se detailed file list milti hai
- cd se directory change hoti hai
- mkdir se folder banta hai
- touch se file create hoti hai

------------------------------------------------------------

2. FILE MANAGEMENT

Commands:
cp
mv
rm
cat
echo >>

Practice:
echo "DevOps Practice" >> test.txt
cp test.txt backup.txt
mv backup.txt new.txt

What I learned:
- cp se file copy hoti hai
- mv se move/rename hota hai
- rm se file delete hoti hai
- cat se file content dekhte hain
- echo >> se file me text add hota hai

------------------------------------------------------------

3. PERMISSIONS & OWNERSHIP

Commands:
ls -l
chmod
chown

Practice:
chmod 755 test.txt
ls -l test.txt

What I learned:
- rwx permissions (read, write, execute)
- 755 permission structure samajh aaya
- ownership concept clear hua

------------------------------------------------------------

4. PROCESS & SERVICES

Commands:
ps aux
top
systemctl status ssh
journalctl -u ssh

What I learned:
- ps aux se running processes check hote hain
- top se live system monitoring hoti hai
- systemctl se service status check hota hai
- journalctl se logs check hote hain

------------------------------------------------------------

5. NETWORKING

Commands:
ping google.com
ip a
hostname
curl ifconfig.me

What I learned:
- network connectivity check hoti hai
- IP address milta hai
- hostname system ka name batata hai
- curl se public IP check hota hai

------------------------------------------------------------

6. TEXT PROCESSING (grep, awk, sed)

grep:
grep "root" /etc/passwd

awk:
awk '{print $1}' test.txt

sed:
sed 's/hello/hi/' test.txt
sed -i 's/hello/hi/' test.txt

What I learned:
- grep = search text
- awk = columns extract karta hai
- sed = text replace karta hai

------------------------------------------------------------

7. SED -i (IMPORTANT CONCEPT)

Command:
sed -i 's/hello/hi/' test.txt

What it does:
- -i = inplace editing
- file ke andar direct change karta hai
- output alag show nahi hota, file update ho jati hai

Example:

Before:
hello world

Command:
sed -i 's/hello/hi/' test.txt

After:
hi world

Important note:
- sed normal mode me file change nahi karta
- sed -i file ko directly modify karta hai
- careful use karna chahiye

Optional safe use:
sed -i.bak 's/hello/hi/' test.txt
(backup file bhi ban jati hai)

------------------------------------------------------------

8. HARD LINK & SOFT LINK

Commands:
ln file1 hardlink
ln -s file1 softlink

What I learned:
- hard link = same data reference
- soft link = shortcut type link

------------------------------------------------------------

9. MINI PRACTICE

Commands:
mkdir revision
cd revision
touch test.txt
echo "hello" >> test.txt
sed -i 's/hello/hi/' test.txt

What I learned:
- file operations practice hui
- sed command real modify mode me samajh aayi
- workflow clear hua

------------------------------------------------------------

SELF CHECK

1. Useful commands:
ls -l
cd
ps aux

2. Service check:
systemctl status ssh
journalctl -u ssh
ps aux

3. Permission change:
chmod 755 test.txt
chown user:user test.txt

4. Next focus:
- permissions practice aur strong karni hai
- sed/awk/grep aur practice
- Docker start karna hai

------------------------------------------------------------

FINAL SUMMARY

Today was revision day focused on strengthening Linux fundamentals through hands-on practice instead of theory.
