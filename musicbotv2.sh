clear 
echo -e "     -----------------------" 
echo -e "     # CHEVEEZ TS3 MUSICBOT KURULUMU v2 #" 
echo -e "     -----------------------" 
echo -e "\033[34m     1)MusicBotv2 Kur\e[0m"  
echo -e "\033[31m     0)Çıkış\e[0m" 
read secenek 
case $secenek in 
###################################################################################################### 
1) 
echo -e "     -----------------------" 
echo -e "     TS3 MusicBOT Kuruluyor" 
echo -e "     -----------------------" 
apt-get update
apt-get install x11vnc xinit xvfb libxcursor1 ca-certificates bzip2 -y
apt-get install libglib2.0-0 screen nano -y
cd /opt
wget -O ts3-bot.tar https://copy.com/cKVfc0KJdFox9x3h/ts3sinusbot.tar?dow
tar -xvf ts3-bot.tar
cd ts3soundboard
chmod 777 *
./sinusbot
screen -S MUZIKBOT xinit /opt/ts3soundboard/sinusbot -RunningAsRootIsEvilAndIKnowThat -- /usr/bin/Xvfb :1 -screen 0 800x600x16 -ac
clear 
echo -e "     ************************" 
echo -e "     TS3 MusicBOT Kuruldu Bilgileriniz: ipadresi:8087 / Kullanici adi:admin & Sifre:foobar" 
echo -e "     ************************" 
;; 
###################################################################################################### 
0) 
echo -e "     -----------------------" 
echo -e "     Cikis basarili" 
echo -e "     -----------------------" 
;; 
###################################################################################################### 
*) 
clear 
echo -e "\033[32m Yanlis Secenek panel yeniden baslatiliyor.\e[0m" 
./czmusicbotv2 
esac 
######################################################################################################  
