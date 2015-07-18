FROM debian:jessie
MAINTAINER Dariusz Dwornikowski <d.dwornikowski@tenesys.pl>

RUN apt-get update && apt-get install -y ca-certificates wget && apt-get clean \
    && apt-get install -y prosody && apt-get clean
RUN mkdir /var/run/prosody && chown prosody:prosody /var/run/prosody
RUN chown -R prosody:prosody /var/lib/prosody /etc/prosody/certs /etc/prosody/conf.d/ /etc/prosody/conf.avail
VOLUME /var/log/prosody /var/lib/prosody /etc/prosody
EXPOSE 80 443 5222 5269 5347 5280 5281
CMD sh -c "chown prosody /var/lib/prosody && prosodyctl start" 
