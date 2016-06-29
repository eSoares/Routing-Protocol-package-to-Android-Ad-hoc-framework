echo $iwface
# Generate config
echo "" > config.conf
echo "FIBMetric \"flat\"" >> config.conf
echo "ClearScreen yes" >> config.conf
echo "AllowNoInt yes" >> config.conf
echo "IpcConnect{" >> config.conf
echo "	 MaxConnections 0" >> config.conf
echo "	 Host 127.0.0.1\n}" >> config.conf
echo "UseHysteresis no\nNicChgsPollInt 3.0\nTcRedundancy 2\nMprCoverage 3" >> config.conf
	
# Interface
printf "Interface \"">> config.conf
printf $iwface >> config.conf
echo "\"" >> config.conf
echo "{\n	 Ip4Broadcast 255.255.255.255" >> config.conf
echo "	 Mode \"mesh\"\n}" >> config.conf

echo "\nhello world\n"

# start olsr
./olsrd -f config.conf -d 0
