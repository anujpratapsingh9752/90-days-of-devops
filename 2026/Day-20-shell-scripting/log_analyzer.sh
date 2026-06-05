#!/bin/bash

# ==============================
# Check if user gave log file
# $# -> total command line arguments
# -eq 0 -> equal to 0
# Agar user file nahi dega to error show hoga
# ==============================

if [ $# -eq 0 ]
then
    echo "Usage: ./log_analyzer.sh <logfile>"
    exit 1
fi


# ==============================
# Check if file exists
# -f -> file exists check
# $1 -> first argument (file name)
# Agar file nahi mili to script band
# ==============================

if [ ! -f "$1" ]
then
    echo "File not found"
    exit 1
fi


# ==============================
# Show which file is analyzing
# ==============================

echo "Analyzing log file: $1"


# ==============================
# Count ERROR and Failed lines
#
# grep -E  -> multiple patterns use kar sakte
# -i       -> case insensitive
#
# "ERROR|Failed"
# | means OR
#
# wc -l -> total lines count
#
# $( ) -> command ka output variable me save
# ==============================

error_count=$(grep -Ei "ERROR|Failed" "$1" | wc -l)


# ==============================
# Print total error count
# ==============================

echo "Total Errors: $error_count"


# Empty line
echo ""

# ==============================
# Critical section heading
# ==============================

echo "---- Critical Events ----"


# ==============================
# grep -n
# -n means line number show karo
#
# Example output:
# 4: 2026 CRITICAL Disk full
#
# 4 = line number
# ==============================

grep -n "CRITICAL" "$1"


# Empty line
echo ""

# ==============================
# Top 5 error heading
# ==============================

echo "---- Top 5 Errors ----"


# ==============================
# grep "ERROR"
# ERROR wali lines nikaalo
#
# cut -d' '
# space ko delimiter banao
#
# -f3-
# 3rd field se aage print karo
#
# sort
# same lines ko arrange karo
#
# uniq -c
# duplicate lines count karo
#
# sort -rn
# reverse numeric sorting
# sabse bada count upar
#
# head -5
# top 5 lines show karo
# ==============================

grep "ERROR" "$1" | cut -d' ' -f3- | sort | uniq -c | sort -rn | head -5


# ==============================
# Report file name create
#
# date +%Y-%m-%d
# today's date
#
# Example:
# log_report_2026-06-05.txt
# ==============================

report_file="log_report_$(date +%Y-%m-%d).txt"


# ==============================
# >  -> new file create / overwrite
# >> -> existing file me add
# ==============================

echo "Log Analysis Report" > "$report_file"

echo "Date: $(date)" >> "$report_file"

echo "Log File: $1" >> "$report_file"


# ==============================
# Total lines count
#
# wc -l
# file ki total lines
#
# < "$1"
# input file pass kar rahe
# ==============================

total_lines=$(wc -l < "$1")


# ==============================
# Report me data add karo
# ==============================

echo "Total Lines: $total_lines" >> "$report_file"

echo "Total Errors: $error_count" >> "$report_file"


# Empty line
echo "" >> "$report_file"


# ==============================
# Critical events heading
# ==============================

echo "Critical Events:" >> "$report_file"


# ==============================
# Critical lines report me save
# ==============================

grep -n "CRITICAL" "$1" >> "$report_file"


# Empty line
echo "" >> "$report_file"


# ==============================
# Top errors heading
# ==============================

echo "Top Errors:" >> "$report_file"


# ==============================
# Top errors report me save
# ==============================

grep "ERROR" "$1" | cut -d' ' -f3- | sort | uniq -c | sort -rn | head -5 >> "$report_file"


# Empty line
echo ""


# ==============================
# Final success message
# ==============================

echo "Report Generated: $report_file"
