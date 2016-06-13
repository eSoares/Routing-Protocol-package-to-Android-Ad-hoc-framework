rm config.conf

kill `ps | grep olsr | awk '{print $2}'`