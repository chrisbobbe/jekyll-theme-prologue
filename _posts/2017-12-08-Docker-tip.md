---
title: Docker, 그것을 알려주마.
author: Goosia
layout: post
comments: true
---

도커의 활용성, 개념, 개요 등은 생략합니다.

관련된 아주 좋은 글들이 많아요.

궁금하시다면 https://subicura.com/2017/01/19/docker-guide-for-beginners-1.html 여기를 한번 참고해 보시고요.

실행과 관련된 주의 사항 및 핵심 내용, 자주쓰는 명령어로 정리를 해보죠.
<h1>주의사항</h1>
<ol>
 	<li>실행된 도커 안으로 쉘을 통해 접속해서 업데이트 된 모든 내용은 도커의 중지와 함께 사라진다. (디비 라던가 디비 라던가 디비 라던가 소스라던가 - 도커로 시작한 스타트업이 도커 리스타트와 함께 스타트업으로 되돌아 갈 수 있다.)</li>
 	<li>windows10 이하, macOS 요세미티 이하는 docker-toolbox 를 설치해야 한다. (virtualbox 로 가상화를 함)</li>
 	<li>리눅스가 아닌 os는 도커가 가상화를 통해 실행 된다. ( 이 부분에 대하여 궁금한 부분은 https://swalloow.github.io/docker-install 이 글을 참고하자. )</li>
 	<li>윈도우에서 docker-toolbox 를  사용할 경우 localhost  접속 외에 로컬 네트워크에 다른 피씨에서 접속하고자 할때는 virtualbox의 네트워크 포트포워드를 등록해야 한다.</li>
</ol>
<h1>핵심 내용</h1>
<ol>
 	<li>docker-toolbox 를 사용할 경우 외부 볼륨을 연결하기 위해서는 virtualbox 공유 폴더 설정 후 공유한 폴더를  docker-machine 에서 마운트 해주고  도커에 볼륨 연결을 통해 사용한다. - docker-machine 이 재시작 될 경우 해당 마운트 정보는 사라지므로  가상화 서버에 진입하여 ( $ docker-machine ssh default ) /var/lib/boot2docker/bootlocal.sh 파일을 생성하여 실행될 명령들을 작성해 주자. (자세한 내용은 http://bryan7.tistory.com/797 을 참고하자.)</li>
 	<li>서비스할 도커 이미지를 빌드 할때는 Dockerfile 을 이용하여 필요한 패키지를 설치하고 재배포 한다. 패키지에 서비스 소스도 포함할 수 있다.</li>
 	<li>실행은 docker-compose up -d 로 간단하게 하도록 docker-compose.yml 파일을 만들어 쓰자.</li>
</ol>
<h1>자주쓰는 명령어</h1>
<ol>
 	<li>docker-machine ssh default : 도커 머신에 터미널 접속</li>
 	<li>docker-machine ip : 도커 머신의 아이피 확인</li>
 	<li>docker-machine active : 도커 시작</li>
 	<li>docker-compose up -d : 해당 도커 실행 (docker-compose.yml 이 있는 폴더에서 실행)</li>
 	<li>docker-compose down : 해당 도커 종료</li>
 	<li>docker exec -it [container-id/name] bash : 컨테이너 id 의 경우 실행된 도커들의 id 가 완전히 다르다면 1글자만 적어도 됨, 498d1e59da57 이면 4 만 적어도 된다는 뜻.</li>
 	<li>docker ps -a : 실행 중인 도커 목록</li>
 	<li>docker rm [container-id] : 실행 중 목록에서 제거</li>
 	<li>docker rm $(docker ps -aq -f status=exited) : exited 상태의 도커들을 목록에서 제거</li>
 	<li>docker images : 로컬에 설치된 이미지 목록</li>
 	<li>docker rmi [image-name] : 설치된 이미지 삭제</li>
 	<li>docker logs [container-id] : 실행 중인 도커의 로그 확인</li>
 	<li>docker logs -f [container-id] : 실행 중인 도커의 로그를 계속 확인</li>
 	<li>docker login : 도커 로그인</li>
 	<li>docker build -t appname . : Dockerfile 이 있는 폴더에서 빌드함</li>
 	<li>docker tag appname goosia/appname:1 : git 처럼 태그 관리가 된다</li>
 	<li>docker push goosia/appname:1 : 내 리포지토리에 이미지를 업로드 push push!</li>
</ol>

<blockquote>docker, docker-compose, docker-machine, 도커, 볼륨연결, 소스관리</blockquote>