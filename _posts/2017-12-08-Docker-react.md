---
title: React Docker [쓰다가 멈춤]
author: Goosia
layout: post
comments: true
---

# start office node
FROM node:latest
MAINTAINER ggoosia@naver.com
RUN apt-get -y update

# install webpack, webpack-dev-server
RUN npm install -g webpack webpack-dev-server
RUN mkdir /home/node/react-fundamentals
WORKDIR /home/node/react-fundamentals

# initialize nodeJS (npm init)
COPY ./package.json /home/node/react-fundamentals

# install react, react-dom
RUN npm install --save react react-dom
RUN npm install --save-dev babel-core babel-loader babel-preset-es2015 babel-preset-react
RUN npm install --save-dev react-hot-loader webpack webpack-dev-server

# MAKE config file
COPY ./webpack.config.js /home/node/react-fundamentals
RUN mkdir /home/node/react-fundamentals/public
COPY ./index.html /home/node/react-fundamentals/public
RUN mkdir -p /home/node/react-fundamentals/src/components
COPY ./App.js /home/node/react-fundamentals/src/components
COPY ./index.js /home/node/react-fundamentals/src

# Server start
EXPOSE 4000
# CMD npm run dev-server

<blockquote>docker, dockerfile, 도커, react</blockquote>