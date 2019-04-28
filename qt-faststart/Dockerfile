FROM ffmpeg-static AS static

FROM alpine
ARG FFMPEG_VERSION
ENV FFMPEG_VERSION ${FFMPEG_VERSION:-4.1.3}

COPY --from=static /usr/local/bin/qt-faststart /usr/local/bin/

WORKDIR /files
VOLUME /files

CMD ["--help"]
ENTRYPOINT ["qt-faststart"]
