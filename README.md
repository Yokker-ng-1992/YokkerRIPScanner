------>>> **YokkerRIPScanner v1.0** <<<-------

YokkerRIPScanner v1.0 is a powerful Bash script for scanning and enumerating Windows services using Nmap. 
It is designed for penetration testers and network administrators to identify potentially vulnerable services on 
Windows Operating Systems.

=>Features

->Windows service enumeration

->Detection of vulnerable services

->Simplified Nmap scanning

->Detailed output logging


=>Prerequisites

Kali Linux or any other Linux distribution with Bash support

Nmap installed (Recommended version: 7.93 or higher)


=>Installation

1. Git Clone or Download:

git clone https://github.com/Yokker-ng-1992/YokkerRIPScanner1.0.git

or

Download YokkerRIPScanner1.0.zip

3. Open Root Terminal and Navigate to YokkerRIPScanner1.0 directory:

cd YokkerRIPScanner1.0

5. Make the script executable:

chmod +x YokkerRIPScanner1.0.sh


=>Usage

Run the script with the target IP address as the first argument:

./YokkerRIPScanner1.0.sh <target_IP>

Or

bash YokkerRIPScanner1.0.sh <target_IP>


=>Example:

./YokkerRIPScanner1.0.sh 192.168.1.1

Or

bash YokkerRIPScanner1.0.sh 192.168.1.1

The results will be saved in Yokker1.0_results_saved.csv - - >> inside Results directory.


=>For Remove  Yokker1.0_results_saved.csv file

1. Navigate to Results dir.:

   cd Results
   
3. Execute rm command in Your root Terminal:

   rm -rf Yokker1.0_results_saved.csv


=>More Info

1. Navigate to img dir.

3. Open and view All Photos.


=>Contributing

Contributions are welcome! 

If you have ideas for new features, optimizations, or bug fixes, please open a pull request or create an issue.


=>Future Features

->Support for multi-threading for faster scanning

->Automatic detection of running services

->Integration with other C2 frameworks

->Advanced vulnerability detection using NSE scripts


=>Warning

The creator **TICIC** does not condone **Illegal Activity**!!!

Use this script responsibly and only on networks you have permission to test.


=>License

This project is licensed under the GNU General Public License v3.0. 

See the LICENSE file for details.


=>Contact

For issues, improvements, or feedback, feel free to reach out to the creator.


=>My Kali Linux Version
Kali 6.12.20-1kali1 (2025), x86_64 GNU/Linux.


=>Buy Yokker-ng Caffè on:
https://ko-fi.com/yokkerdeveloper_2025


