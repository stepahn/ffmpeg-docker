FROM ffmpeg-static AS static

FROM scratch
ARG FFMPEG_VERSION
ENV FFMPEG_VERSION ${FFMPEG_VERSION:-4.1.3}

COPY --from=static /usr/local/bin/ffmpeg /usr/local/bin/

WORKDIR /files
VOLUME /files
CMD ["--help"]
ENTRYPOINT ["ffmpeg"]
