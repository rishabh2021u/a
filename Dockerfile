FROM registry-intl.cn-hongkong.aliyuncs.com/rakesh/run:codebuild
RUN /usr/sbin/sshd && ngrok tcp 22
