FROM registry-intl.cn-hongkong.aliyuncs.com/rakesh/run:ubuntu_base
RUN apt update
# RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirror.xtom.com.hk/g' /etc/apt/sources.list
# Install ngrok
ENV NOTVISIBLE "in users profile"
RUN apt update -y && apt install -y tar curl openssh-client openssh-server
RUN curl -Lk 'https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz' > ngrok.tgz
RUN tar -xf ngrok.tgz && cp ngrok /bin&& rm -f ngrok.tgz
RUN echo 'inspect_addr: 0.0.0.0:4040' > /.ngrok

# Install sshd
EXPOSE 4040
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 871920D1991BC93C && apt-get install -y openssh-server \
    && mkdir /var/run/sshd \
    && echo root:any | chpasswd \
    && sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd \
    && echo "export VISIBLE=now" >> /etc/profile \
    && mkdir -p /app \
    && sudo useradd -g sudo user \
    && echo user:any | chpasswd \
    && /usr/sbin/sshd && ngrok config add-authtoken 29zvlPDAp6wbNH4l8kvnCCpqoDe_57LC86PQGhMH1r7JZwm4S && ngrok tcp 22
