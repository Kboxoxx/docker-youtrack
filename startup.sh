#! /bin/bash
file="/opt/youtrack/conf/youtrack.jvmoptions"
if [ -f "$file" ]
then
	echo "Intewebs/YouTrack: Configuration already exsists. Not touching anything."
else
	cp -n /tmp/youtrack.jvmoptions /opt/youtrack/conf
	/opt/youtrack/bin/youtrack.sh configure --base-url $BASE_URL --listen-port $LISTEN_PORT
fi
/opt/youtrack/bin/youtrack.sh run --no-browser
