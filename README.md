# JetBrains YouTrack 6.5

This image contains the most recent version of JetBrains Youtrack Issue tracker. You can mount the volumes:

- /opt/youtrack/conf
- /opt/youtrack/data
- /opt/youtrack/backup

Apart from that you **MUST** specifiy the environment variables ```LISTEN_PORT``` and ```BASE_URL```.

## Example run command

> docker run -d -v /opt/youtrack/conf -v /opt/youtrack/data -v /opt/youtrack/backup -e BASE_URL=http://youtrack.yoursite.com -e LISTEN_PORT=8080 -p 80:8080 interwebs/youtrack
