#!/bin/bash



apt-get update
apt-get upgrade -y

apt-get install -y build-essential pkg-config uuid-dev \
zlib1g-dev libjpeg-dev libsqlite3-dev libcurl4-openssl-dev \
libpcre3-dev libspeexdsp-dev libldns-dev libedit-dev libtiff5-dev \
yasm libopus-dev libsndfile1-dev unzip autoconf libtool libtool-bin \
python3-dev erlang libavformat-dev libswscale-dev liblua5.2-dev php7.4-dev \
luajit libluajit-5.1-dev libsctp-dev doxygen libglib2.0-dev libpq-dev \
git subversion build-essential autoconf automake libtool libncurses5 \
libncurses5-dev make libjpeg-dev libtool libtool-bin libsqlite3-dev \
libpcre3-dev libspeexdsp-dev libldns-dev libedit-dev yasm liblua5.2-dev \
libopus-dev cmake libcurl4-openssl-dev libexpat1-dev libgnutls28-dev libtiff5-dev \
libx11-dev unixodbc-dev libssl-dev python-dev zlib1g-dev libasound2-dev libogg-dev \
libvorbis-dev libperl-dev libgdbm-dev libdb-dev uuid-dev libsndfile1-dev \
autoconf fakeroot devscripts flite1-dev dh-systemd dh-python libtpl-dev \
bison libavresample-dev libopencv-dev libhiredis-dev ladspa-sdk libmemcached-dev \
libsoundtouch-dev libopencore-amrnb-dev  libcodec2-dev libmariadb-dev portaudio19-dev \
librabbitmq-dev libsnmp-dev libmagickcore-dev libopusfile-dev libmp3lame-dev \
libmpg123-dev libshout3-dev libvlc-dev default-jdk libmono-2.0-dev mono-mcs libyaml-dev \
libldap2-dev wget curl aptly ca-certificates gpg awscli jq



apt-key adv --recv-keys  6EC4A2C1F1FBA7B1

echo "deb https://apt-repo.etechpro.co.uk/ focal freeswitch" > /etc/apt/sources.list.d/etechpro.list
