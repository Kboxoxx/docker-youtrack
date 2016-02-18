FROM java:8-jre
MAINTAINER m.albers@interwebs-ug.de

WORKDIR /opt/youtrack

ENV YOUTRACK_VERSION 6.5.17031
ENV YOUTRACK_BASE_URL https://ticket.interwebs-ug.de

RUN cd /opt/youtrack && wget -nv https://download.jetbrains.com/charisma/youtrack-$YOUTRACK_VERSION.zip \
    && unzip /opt/youtrack/youtrack-$YOUTRACK_VERSION.zip && rm /opt/youtrack/youtrack-$YOUTRACK_VERSION.zip
    
ADD youtrack.jvmoptions /tmp
ADD startup.sh /usr/local/bin 
RUN chmod +x /usr/local/bin/startup.sh

EXPOSE 8080

CMD startup.sh

