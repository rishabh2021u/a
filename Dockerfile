FROM alpine
RUN apk add --no-cache python3 ffmpeg

CMD echo "build done"
