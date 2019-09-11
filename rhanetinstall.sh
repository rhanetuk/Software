echo jedimakerxtream Install
clear
echo -------------------------------------------------------------------------------
echo Downloading, please wait...
echo
echo
echo
cd /
cd tmp
rm *.ipk -f
echo Removing Old Bouquet Makers...
opkg remove enigma2-plugin-aceiptv-bouquetmaker
opkg remove enigma2-plugin-extensions-e2m3u2bouquet
echo Installing New Bouquet Makers...
wget https://github.com/rhanetuk/Software/blob/master/jedimaker.ipk
opkg install /tmp/https://github.com/rhanetuk/Software/blob/master/jedimaker.ipk
rm *.xml -f
shutdown -r now
