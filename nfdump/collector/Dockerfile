### FROM ubuntu:16.04
FROM phusion/baseimage

ENV NFDUMP_VERSION 1.6.17

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /tmp

RUN apt-get update \
  && apt-get install --yes --no-install-recommends wget build-essential gcc make flex byacc libbz2-dev libtool autoconf autotools-dev automake pkg-config \
  && wget -q --no-check-certificate https://github.com/phaag/nfdump/archive/v$NFDUMP_VERSION.tar.gz \
  && tar xfz v$NFDUMP_VERSION.tar.gz \
  && rm v$NFDUMP_VERSION.tar.gz \
  && cd nfdump-$NFDUMP_VERSION \
  && ./autogen.sh \
  && ./configure --enable-nsel=yes --enable-shared=false \
  && make \
  && make install \
  && cd .. \
  && rm -rf nfdump-$NFDUMP_VERSION

CMD ["nfcapd", "-T", "all", "-l", "/data", "-S", "1", "-w", "-z", "-p", "9999"]
