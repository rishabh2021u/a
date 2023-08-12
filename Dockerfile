FROM registry-intl.cn-hongkong.aliyuncs.com/rakesh/run:codebuild
RUN sshd && ngrok tcp 22
