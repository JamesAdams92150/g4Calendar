FROM python

MAINTAINER pegasus <jamesadamspub@gmail.com>

RUN apt-get update

RUN apt-get -y install wget
RUN pip install simple-http-server
#RUN /usr/bin/python3 -V
#RUN rm /var/www/html/index.html

ADD https://github.com/JamesAdams92150/g4Calendar/blob/main/index.html /var/www/html
ADD https://github.com/JamesAdams92150/g4Calendar/blob/main/bash.sh /var/www/script

#ENTRYPOINT python /var/www/html/server.py
ENTRYPOINT /var/www/script/bash.sh