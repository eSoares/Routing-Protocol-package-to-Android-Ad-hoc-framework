echo $iwface
# Generate config
echo "" > config.conf
echo "FIBMetric \"flat\"\n" >> config.conf
echo "ClearScreen yes\n" >> config.conf
echo "AllowNoInt yes\n" >> config.conf
echo "IpcConnect{\n" >> config.conf
echo "	MaxConnections 0\n" >> config.conf
echo "	Host 127.0.0.1\n}" >> config.conf
echo "UseHysteresis no\n" + "NicChgsPollInt 3.0\n" + "TcRedundancy 2\n" + "MprCoverage 3\n" >> config.conf
	
# Interface
echo "Interface \"">> config.conf
echo $iwface >> config.conf
echo "\"\n" >> config.conf
echo "{\n	 Ip4Broadcast 255.255.255.255\n" >> config.conf
echo "	 Mode \"mesh\"\n}\n" >> config.conf

echo "\nhello world\n"

# start olsr
olsrd -f config.conf -d 0