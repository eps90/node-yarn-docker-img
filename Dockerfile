FROM ubuntu:16.04
WORKDIR /root

RUN apt-get update && apt-get install -y locales

RUN mkdir .ssh
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

RUN sudo apt-get update
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y yarn

RUN npm install -g gulp-cli
