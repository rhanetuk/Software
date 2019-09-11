#!/bin/sh
# Solar Install v0.7
clear
echo Running Solar Install v0.7
echo IF YOU HAVE ISSUES, PLEASE CONTACT SUPPORT AND LET THEM KNOW YOU ARE USING v0.7
echo -------------------------------------------------------------------------------
echo Downloading, please wait...
echo
echo
echo
cd /
cd tmp
rm *.ipk -f
rm *.xml -f
opkg update
echo Removing Old Bouquet Makers...
opkg remove enigma2-plugin-aceiptv-bouquetmaker
opkg remove enigma2-plugin-extensions-e2m3u2bouquet
echo Installing New Bouquet Makers...
wget https://github.com/rhanetuk/Software/blob/master/enigma2-plugin-extensions-jedimakerxtream_5.17-20190904_all.ipk
wget http://5.101.146.38/config.xml
opkg install /tmp/enigma2-plugin-extensions-jedimakerxtream_5.17-20190904_all.ipk
rm *.xml -f
shutdown -r now
