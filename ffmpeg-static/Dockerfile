FROM alpine
MAINTAINER Stephane Jourdan <fasten@fastmail.fm>
ARG FFMPEG_VERSION
ENV FFMPEG_VERSION ${FFMPEG_VERSION:-4.1.3}

WORKDIR /tmp

RUN wget -q https://johnvansickle.com/ffmpeg/releases/ffmpeg-$FFMPEG_VERSION-amd64-static.tar.xz \
  && tar xJf /tmp/ffmpeg-$FFMPEG_VERSION-amd64-static.tar.xz -C /tmp \
  && mv /tmp/ffmpeg-$FFMPEG_VERSION-amd64-static/* /usr/local/bin/ \
  && rm -rf /tmp/ffmpeg*
