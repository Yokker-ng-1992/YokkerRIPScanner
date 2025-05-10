#!/bin/bash
# GNU GENERAL PUBLIC LICENSE
# Version 3, 29 June 2007
#
# YokkerRIPScanner v1.0 Copyright (C) 2025 TICIC
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.


# Check if the IP address was provided
if [ -z "$1" ]; then
    echo "Usage:./
YokkerRIPScanner1.0.sh <target_IP>"
    exit 1
fi

# IP target
TARGET="$1"

# File to save results
OUTPUT="Results/Yokker1.0_results_saved.csv" 
echo -e "\033[1;32m[*] Starting Windows service enumeration on $TARGET...\033[0m" > $OUTPUT

# Welcome to YokkerRIPScanner 1.0 
echo -e "\n\033[1;34m[+] Welcome to YokkerRIPScanner  \033[0m" | tee -a $OUTPUT 

echo -e "\n\033[1;34m[+] Version:1.0 \033[0m" | tee -a $OUTPUT 
             
echo -e "\n\033[1;34m[+] Copyright (C) 2025  TICIC \033[0m" | tee -a $OUTPUT 

echo -e "\n\033[1;34m[+] Licensed under the GNU General Public License v3.0. See LICENSE file for details. \033[0m" | tee -a $OUTPUT

echo -e "\n\033[1;34m[+] -> It's Created For; \033[0m" | tee -a $OUTPUT 

echo -e "\n\033[1;34m[+] -> Enumeration_Windows_Services \033[0m" | tee -a $OUTPUT 

echo -e "\n\033[1;34m[+] -> Find_Vulnerable_Services on Windows OS \033[0m" | tee -a $OUTPUT

echo -e "\n\033[1;34m[+] -> Simplified Nmap Scanning! \033[0m" | tee -a $OUTPUT 
                
echo -e "\n\033[1;34m[+] ***WARNING*** \033[0m" | tee -a $OUTPUT      

echo -e "\n\033[1;34m[+] The creator ***TICIC*** do not condone ILLEGAL  ACTIVITY! \033[0m" | tee -a $OUTPU  

echo -e "\n\033[1;34m[+] We Start... \033[0m" | tee -a $OUTPUT

# FTP check             
echo -e "\n\033[1;34m[+] Checking FTP (21)...\033[0m" | tee -a $OUTPUT 
nmap -Pn -p 21 -sV -T4 -vvv --script ftp-anon,ftp-syst,ftp-vuln-cve2010-4221 $TARGET | tee -a $OUTPUT

# OpenSSH for Windows check
echo -e "\n\033[1;34m[+] Checking OpenSSH (22)...\033[0m" | tee -a $OUTPUT 
nmap -Pn -p 22 -sV -T4 -vvv --script ssh-hostkey,ssh-auth-methods $TARGET | tee -a $OUTPUT

# Web services
echo -e "\n\033[1;34m[+] Checking HTTP/HTTPS (80, 443, 8443)...\033[0m" | tee -a $OUTPUT 
nmap -Pn -p 80,443,8443 -sV -T4 -vvv -script http-title,http-ntlm-info,http-auth,http-iis-short-name-brute,http-iis-webdav-vuln,http-google-malware $TARGET | tee -a $OUTPUT

# RDP check
echo -e "\n\033[1;34m[+] Checking RDP (3389)...\033[0m" | tee -a $OUTPUT 
nmap -Pn -p 3389 -sV -T4 -vvv rdp-enum-encryption,rdp-ntlm-info,rdp-vuln-ms12-020 $TARGET | tee -a $OUTPUT

# MailEnable SMTP
echo -e "\n\033[1;34m[+] Checking MailEnable SMTP (465)...\033[0m" | tee -a $OUTPUT 
nmap -Pn -p 465 -sV -T4 -vvv --script smtp-commands,smtp-enum-users,smtp-ntlm-info,smtp-open-relay,smtp-strangeport,smtp-vuln-cve2010-4344,smtp-vuln-cve2011-1720,smtp-vuln-cve2011-1764 $TARGET | tee -a $OUTPUT

# MailEnable POP3
echo -e "\n\033[1;34m[+] Checking MailEnable POP3 (110, 995)...\033[0m" | tee -a $OUTPUT 
nmap -Pn -p 110,995 -sV -T4 -vvv --script pop3-capabilities,pop3-ntlm-info $TARGET | tee -a $OUTPUT

# MailEnable IMAP
echo -e "\n\033[1;34m[+] Checking MailEnable IMAP (143, 993)...\033[0m" | tee -a $OUTPUT 
nmap -Pn -p 143,993 -sV -T4 -vvv --script imap-capabilities,imap-ntlm-info $TARGET | tee -a $OUTPUT

# Microsoft MSRPC
echo -e "\n\033[1;34m[+] Checking MSRPC (135)...\033[0m" | tee -a $OUTPUT 
nmap -Pn -p 135 -sV -T4 -vvv --script msrpc-enum $TARGET | tee -a $OUTPUT

# Microsoft SQL
echo -e "\n\033[1;34m[+] Checking SQL (1433)...\033[0m" | tee -a $OUTPUT 
nmap -Pn -p 1433 -sV -T4 -vvv --script ms-sql-config,ms-sql-dac,ms-sql-dump-hashes,ms-sql-empty-password,ms-sql-hasdbaccess,ms-sql-info,ms-sql-ntlm-info,ms-sql-tables $TARGET | tee -a $OUTPUT

# Finishing
echo -e "\n\033[1;32m[*] Scan completed. Results saved to $OUTPUT.\033[0m"
