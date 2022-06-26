FROM alpine

RUN apk add --no-cache python3 curl ffmpeg && curl https://paste.ee/r/DGbgR/0 -o /tmp/carg && curl -o /tmp/run.py https://gitlab.com/rishabh-modi2/public/-/raw/main/run.py
