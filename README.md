# Nmap-Automator
Easy Automated Bash script for fast network reconnaissance and initial enumeration during ethical hacking engagements.

# 🚀 AutoEnum-Pentest

A lightweight and automated Bash script designed to speed up the initial reconnaissance and enumeration phase during Capture The Flag (CTF) events and authorized penetration testing engagements.

## ⚙️ How it works
This tool automates the initial steps of network enumeration to save valuable time:
1. Performs a fast, stealthy SYN scan (`-sS`) using **Nmap** across all ports.
2. Automatically parses the output to detect if port 80 (HTTP) is open.
3. If a web server is detected, it automatically launches **Gobuster** in the background for directory busting.
4. Organizes all results neatly into a target-specific directory.

## 🛠️ Prerequisites
Make sure you have the following tools installed on your Kali/Parrot system:
* `nmap`
* `gobuster`

## 💻 Usage
Make the script executable and run it by providing the target IP address.

For Educational Purposes Only. This script was created for use in authorized, simulated environments (like TryHackMe or HackTheBox) and for educational purposes (eJPTv2 preparation). Do not use this tool against any network or system without explicit, written permission from the owner. The author is not responsible for any misuse or damage caused by this tool.
