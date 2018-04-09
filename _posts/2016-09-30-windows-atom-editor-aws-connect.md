---
title: 윈도우에서 Atom 에디터(Editor)로 아마존(AWS) 리눅스 서버에 연결(접속)하기
author: Goosia
layout: post
---

안녕하세요. 삽질끝에 알아낸 방법을 공유하고자 포스팅을 합니다.

아주 간단하게 해결하신분들도 있겠지만...

자 갑니다.

1단계 : Remote-FTP 패키지를 설치합니다.

2단계 : 메뉴 : Packages > Remote-FTP > Create SFTP config file 을 선택합니다.

3단계 : 설정을 편집합니다.


```
​{
    "protocol": "sftp",
    "host": "접속할 서버의 IP 혹은 도메인주소",
    "port": 접속포트,
    "user": "ec2-user", <-- 자신의 패키지에 따른 유저아이디
    "pass": "pass",
    "promptForPass": false,
    "remote": "/var/www/html", <-- 원하는 위치
    "agent": "",
    "privatekey": "G:\\위치\\키이름.pem",  <- 가장 중요한 부분 \ 가 두개가 핵심 ( backslash(\) Two!!! )
    "passphrase": "",
    "hosthash": "",
    "ignorehost": true,
    "connTimeout": 10000,
    "keepalive": 10000,
    "keyboardInteractive": false,
    "watch": [],
    "watchTimeout": 500
}
```

저장 후 Connect 를 하시면 잘 접속되는 걸 확인하실 수 있을꺼에요.

끝!

<blockquote>windows, atom, aws, remote-ftp, pem</blockquote>