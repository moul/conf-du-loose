FROM dorowu/ubuntu-desktop-lxde-vnc

ADD ./loose.sh ./win.sh /

# Install ~/.loose
RUN sh -xe /loose.sh

# Run ~/.loose
RUN set -xe; . ~/.loose; exit 0
