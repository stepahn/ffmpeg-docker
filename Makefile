VERSION := 4.1.3
.DEFAULT_GOAL := all

all: ffmpeg ffprobe qt-faststart

ffmpeg: ffmpeg-static
	docker build -t ffmpeg -t ffmpeg:$(VERSION) ffmpeg/

ffprobe: ffmpeg-static
	docker build -t ffprobe -t ffprobe:$(VERSION) ffprobe/

qt-faststart: ffmpeg-static
	docker build -t qt-faststart -t qt-faststart:$(VERSION) qt-faststart/

ffmpeg-static:
	docker build -t ffmpeg-static --build-arg FFMPEG_VERSION=$(VERSION) ffmpeg-static/
