#!/bin/bash

disk(){
	d=$(df -h)
	echo "Disk Usage $d"
}

memory(){
	echo "Memory Usage"
	free -h
}




echo "-------------------------SYSTEM REPORTS------------------------------"
echo ""


disk
echo ""

memory
