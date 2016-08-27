FROM ubuntu:14.04
MAINTAINER https://github.com/aronahl
WORKDIR /root/
RUN apt-get update && apt-get install -fy \
    build-essential \
    command-not-found \
    gconf2 \
    intltool \
    libglib2.0-dev \
    libgnutls-dev \
    libidn11-dev \
    libmeanwhile-dev \
    libncurses5-dev \
    libtool \
    libxml2-dev \
    mercurial
RUN hg clone https://bitbucket.org/pidgin/main
WORKDIR /root/main
RUN hg update v2.11.0
RUN ./autogen.sh --disable-gtkui --disable-gstreamer --disable-vv --disable-avahi --disable-dbus --disable-perl --disable-tcl
RUN make install
ENV LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:/lib
CMD /usr/local/bin/finch
