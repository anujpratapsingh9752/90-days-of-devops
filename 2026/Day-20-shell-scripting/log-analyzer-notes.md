Day 20 – Log Analyzer Notes

1. What I Did Today

A. Created a log analyzer bash script

B. Read log file

C. Counted ERROR messages

D. Found CRITICAL events

E. Found top repeated errors

F. Generated report file

---

2. Folder Setup

mkdir Day-20-shell-scripting

Create new folder

---

cd Day-20-shell-scripting

Go inside folder

---

3. Created Log File

vim sample_log.log

Inside data:

2026 INFO Server started
2026 ERROR Connection timed out
2026 ERROR File not found
2026 CRITICAL Disk full
2026 Failed Login attempt
2026 ERROR Connection timed out
2026 CRITICAL Database down

---

4. Vim Basic

Insert mode:

i

Save and exit:

Esc
:wq

---

5. Created Script File

vim log_analyzer.sh

---

6. Gave Permission

chmod +x log_analyzer.sh

Meaning:
→ script became executable

---

7. Ran Script

./log_analyzer.sh sample_log.log

---

8. Input Validation

if [ $# -eq 0 ]

Meaning:
→ check if user gave file or not

---

9. File Check

if [ ! -f "$1" ]

Meaning:
→ check if file exists or not

---

10. Important Variables

$1

Meaning:
→ first argument

Example:

./log_analyzer.sh sample_log.log

Then:

$1 = sample_log.log

---

$#

Meaning:
→ total number of arguments

---

11. ERROR Count

grep -Ei "ERROR|Failed" "$1" | wc -l

Flow:

A. Search ERROR or Failed

↓

B. Count matching lines

---

12. CRITICAL Events

grep -n "CRITICAL" "$1"

Meaning:
→ show CRITICAL lines with line number

Example:

4: 2026 CRITICAL Disk full

---

13. Top Errors Logic

grep "ERROR" "$1"

Take ERROR lines

---

cut -d' ' -f3-

Print from 3rd word

Example:

Connection timed out

---

sort

Arrange same lines

---

uniq -c

Count duplicate lines

---

sort -rn

Biggest count on top

---

head -5

Show top 5 lines

---

14. Most Important Command

grep "ERROR" "$1" | cut -d' ' -f3- | sort | uniq -c | sort -rn | head -5

Flow:

Get ERROR lines

↓

Separate message

↓

Sort lines

↓

Count duplicates

↓

Descending order

↓

Show top 5

---

15. Report File Generate

log_report_$(date +%Y-%m-%d).txt

Example:

log_report_2026-06-05.txt

---

16. What Saved In Report

A. Date

B. File name

C. Total lines

D. Total errors

E. Critical events

F. Top errors

---

17. Output Example

Analyzing log file: sample_log.log

Total Errors: 4

---- Critical Events ----
4: 2026 CRITICAL Disk full
7: 2026 CRITICAL Database down

---- Top 5 Errors ----
2 Connection timed out
1 File not found

Report Generated: log_report_2026-06-05.txt

---

18. Commands Used Today

A. grep
→ used to search text inside file

B. wc -l
→ used to count total lines

C. cut
→ used to extract specific part of text

D. sort
→ used to arrange data

E. uniq -c
→ used to count duplicate lines

F. head
→ used to show top lines

G. echo
→ used to print text

H. if condition
→ used to check condition

I. variables
→ used to store values

J. pipes ( | )
→ used to send output of one command to another command

---

19. Real DevOps Use

A. Monitor server logs

B. Find production issues

C. Track errors

D. Automate daily tasks

E. Monitoring systems
