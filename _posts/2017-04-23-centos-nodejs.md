---
title: CentOS 5.11 에 nodejs 최신버전 (v7.8.0) 설치하기
author: Goosia
layout: post
comments: true
---

centos 5.11 에는 python 2.14 가 설치되어있는데 2.6 이상이 필요합니다.

python 버전을 올려봅시다.
<pre><code>wget http://download.fedoraproject.org/pub/epel/5/i386/epel-release-5-4.noarch.rpm
sudo rpm -ivh epel-release-5-4.noarch.rpm
sudo yum install python26</code></pre>
설치된 위치는 /usr/bin/python26 인지 확인해보시고. 굳이 확인 안해도..

이제 GCC 4.4 설치
<pre><code>sudo yum install gcc44
sudo yum install gcc44-c++</code></pre>
GCC와 python 링크 생성
<pre><code>sudo mv /usr/bin/gcc /usr/bin/gcc41
sudo ln -s /usr/bin/gcc44 /usr/bin/gcc
sudo mv /usr/bin/g++ /usr/bin/g++41
sudo ln -s /usr/bin/g++44 /usr/bin/g++
sudo mv /usr/bin/python /usr/bin/python214
sudo ln -s /usr/bin/python26 /usr/bin/python</code></pre>
Node.js 다운로드 및 설치

시간이 좀 걸려요.
최근 서버에 설치했을 경우는 빠를지 몰라도.
centos 5.11 이 설치됬을때라면 아주아주 옛날이거든요. 10년 정도?
그때 최신 버전이였다면 설치되는데 하루 잡아도 됩니다.
실제로 제가 너무 오래 걸려서 그냥 켜두고 와서 작업하고 켜두고 작업하고를 해서 2일이 걸렸으니...
<pre><code>wget http://nodejs.org/dist/v0.12.2/node-v0.12.2.tar.gz
tar vxzf node-v0.12.2.tar.gz
cd node-v0.12.2

./configure
make
sudo make install</code></pre>
make 와 make install 이 정말 오래 걸립니다. 2시간씩은 걸린 느낌입니다.
정확하지는 않지만 한시간은 참고 봤는데 그 후에 못참고 다른거 했거든요. ㅎㅎ

만일 심볼릭링크를 예전 버전으로 돌리셔야 하면 아래 명령 참고 하시고요.
<pre><code>sudo rm -f /usr/bin/python
sudo ln -s /usr/bin/python214 /usr/bin/python
sudo rm -f /usr/bin/gcc
sudo ln -s /usr/bin/gcc41 /usr/bin/gcc
sudo rm -f /usr/bin/g++
sudo ln -s /usr/bin/g++41 /usr/bin/g++</code></pre>
node -v , npm -v 로 버전 홗인 해보시고 만일 PATH 연결이 안됬다면 연결해주시면 됩니다.
연결이 안될 경우가 없을거라고 보지만...
<pre><code>$ export PATH="/usr/local/bin:$PATH"
$ node -v
v0.12.2</code></pre>
여기까지 내용은 <a href="https://gist.github.com/infused/840621fe08cf096c454d">https://gist.github.com/infused/840621fe08cf096c454d</a> 글을 참고 했습니다!

이제 최신버전으로 가야겠죠.
간단합니다.

사용했었다면 캐시 초기화 해주시고요.
안하셨으면 그냥 다음으로 가시고요.
<pre><code>$ sudo npm cache clean -f</code></pre>
n 모듈 설치 및 현재 stable 버전 설치
<pre><code>$ sudo npm install -g n
$ sudo n stable

 install : node-v7.8.0
 mkdir : /usr/local/n/versions/node/7.8.0
 fetch : https://nodejs.org/dist/v7.8.0/node-v7.8.0-linux-x86.tar.gz
######################################################################## 100.0%
 installed : v7.8.0

</code></pre>
sudo n stable 이 시간이 좀 소요 됩니다.

설치가 완료 되었으면 버전을 확인해 볼까요?
<pre><code>$ node -v
v7.8.0</code></pre>
설치하고 나서 socket.io와 node.js 연동해서 채팅 한번 해보실래요?

<a href="https://socket.io/get-started/chat/">https://socket.io/get-started/chat/</a>

아래 링크로 가서 웹서버 설정 후 소켓 실행해서 연결 하시면 굳이 뭐 설명 없이 바로 되실거에요.

Node.JS express 프로젝트 

<blockquote>install, nodejs, socket.io</blockquote>