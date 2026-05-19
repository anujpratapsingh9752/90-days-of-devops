- Linux Commands Notes

- ==============================
- A. Process Management Commands
- ==============================

- ps → running processes dekhne ke liye
ps

- ps -e → system ke sabhi running processes dekhne ke liye
ps -e

- ps -ef → detailed process information dekhne ke liye
ps -ef

- top → live running processes aur CPU/RAM usage dekhne ke liye
top

- kill PID → kisi process ko stop karne ke liye

- Example:
kill 1234

- kill -9 PID → forcefully process stop karne ke liye

- Example:
kill -9 1234

- htop → advanced live process viewer

- (agar installed ho)
htop


- ==========================
- B. File System Commands
- ==========================

- ls → files aur folders list karne ke liye
ls

- cd → directory change karne ke liye

- Example:
cd Documents

- pwd → current location/path dekhne ke liye
pwd

- mkdir → naya folder banane ke liye

- Example:
mkdir practice

- rm → file delete karne ke liye

- Example:
rm demo.txt

- rm -r → folder delete karne ke liye

- (andar files ho tab bhi)

- Example:
rm -r practice

- cp → file copy karne ke liye

- Example:
cp file1.txt file2.txt

- mv → file move ya rename karne ke liye

- Example:
mv file1.txt folder/

- cat → file ka content dekhne ke liye

- Example:
cat demo.txt

- nano → file edit karne ke liye

- Example:
nano demo.txt

- touch → nayi file banane ke liye

- Example:
touch file.txt

- chmod → file permissions change karne ke liye

- Example:
chmod 777 file.txt


- ==========================
- C. Networking Commands
- ==========================

- ping → network connection check karne ke liye

- Example:
ping google.com

- ip addr → IP address dekhne ke liye
ip addr

- curl ifconfig.me → public IP address check karne ke liye
curl ifconfig.me

- dig → DNS information dekhne ke liye

- Example:
dig google.com
