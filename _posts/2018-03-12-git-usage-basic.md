---
title: Git 정리[기본편]
author: Goosia
layout: post
comments: true
---

Git (깃) 의 Commit (커밋)은

'작업트리' 에 변경 내용을 스테이징 후 저장소에 기록 하는 것.

참고 사이트 : <a href="https://backlog.com/git-tutorial/kr" target="_blank" rel="noopener">https://backlog.com/git-tutorial/kr</a>

&nbsp;
<h1><em>기본</em></h1>

<hr />

<ul>
 	<li>시작하기
깃은 파일의 이력을 관리하기 위한 분산형 버전 관리 시스템, Linux 소스코드를 관리 할 목적으로 개발됨.</li>
 	<li>이력을 관리하는 저장소
원격 저장소와 로컬 저장소로 나눠진다.
저장소는 로컬에 새로운 저장소를 만드는 것과, 원격의 저장소를 가져오는 2가지가 있다.</li>
 	<li>변경을 기록하는 커밋
시간 순으로 저장, 과거 변경 이력과 내용을 알 수 있다.
각 커밋에는 영문/숫자로 이루어진 40자리 고유 이름이 붙는다.
<blockquote>Tips
버그 수정, 기능 추가 등 특별한 의미가 있는 업데이트를 작업별로 구분해서 각각 커밋하면, 나중에 이력을 보고 특정 변경 내용을 찾기 쉽습니다.

메세지는 명료하고 이해하기 쉽게 남겨야 본인 뿐만 아니라 다른 사람이 커밋이력을 확인하기 쉽습니다.
Git 에서 권장하는 메세지 형식을 따르는 것도 좋습니다.
1번째줄 : 커밋 내의 변경 내용을 요약
2번째줄 : 빈 칸
3번쩨줄 : 변경한 이유
주로 위 형식으로 메세지를 작성합니다.</blockquote>
</li>
 	<li>작업트리와 인덱스
폴더를 작업트리라고 부름.
커밋을 실행하기 전의 저장소와 작업 트리 사이에 존재하는 공간을 '인덱스' 라고 함. [압축파일 같은 느낌 - 스테이징 한다고 함]</li>
 	<li>정리
Git 의 Commit 이란, '작업트리'의 변경내용을 스테이징 후 저장소에 기록하는 것.</li>
</ul>

<hr />

<ul>
 	<li>Git 설치
자신의 플랫폼에 맞는 툴 설치</li>
 	<li>초기설정
GUI는 옵션 변경, Shell 은 git config 명령
설정내역은 사용자 홈폴더의 .gitconfig 파일에 기록됨</li>
 	<li>새 저장소 만들기
GUI는 우클릭 후 깃 프로그램 선택, Shell 은 git init</li>
 	<li>파일 커밋하기
GUI는 staging, Shell은 git add
후 commit

<hr />

</li>
 	<li>저장소 공유</li>
 	<li>원격 저장소에 푸시(Push)하기
로컬 저장소에서 변경된 이력을 원격 저장소에 업로드</li>
 	<li>원격 저장소에 복제(Clone)하기
원격 저장소의 내용을 통째로 다운로드 하는 것(변경 이력까지 함께 복제됨)</li>
 	<li>원격 저장소에 풀(Pull)해오기
원격 저장소의 변경 이력 및 내용을 다운로드하여 로컬 저장소에 적용</li>
 	<li>

<hr />

튜토리얼2 저장소 공유</li>
 	<li><a href="http://gitlab.com">Gitlab.com</a> 에 원격 저장소 생성하기
사이트 접속 후 회원 가입 및 신규 프로젝트 생성하면 레포지토리가 생성됨</li>
 	<li>원격 저장소에 푸시(Push)하기
GUI의 경우 remote 설정에 add 를 눌러 원격 저장소의 주소를 입력하고, Shell 의 경우 git remote add name url 로 원격 저장소를 설정
GUI 는 push 버튼, 콘솔은 git push origin master 와 같이 원격 저장소 origin에 로컬 저장소 master 를 push 한다고 입력함</li>
 	<li>원격 저장소 복제(Clone)하기
GUI : clone =&gt; git 이 저장 될 dir 선택 (clone existing repo)
콘솔 : git clone url local_dir</li>
 	<li>복제한 저장소에서 다시 푸시하기
GUI : 내용 수정 -&gt; 로컬 저장소에 commit -&gt; 원격 저장소에 push
콘솔 : 내용 수정 -&gt; git add sample.txt, git commit -m "add" -&gt; git push
Note : 저장소의 위치를 표기하는 방법
origin/master : 원격 저장소 [origin] 의 브랜치인 [master]의 위치
origin/HEAD : 원격 저장소 [origin] 을 복제해 올 때 다운로드 되는 커밋의 위치
master : 로컬 저장소 브랜치인 [master]의 위치</li>
 	<li>원격 저장소에서 풀(Pull)해오기(다운로드)
GUI : 디렉토리 -&gt; pull 선택 -&gt; 원격 저장소의 내용을 로컬 저장소로 덮어 씀
콘솔 : 디렉토리 -&gt; git pull origin master -&gt; git log (결과보기)

<hr />

</li>
 	<li>변경 이력의 통합</li>
 	<li>변경 이력 병합(Merge)하기
내가 끌어온(pull) 저장소가 최신 버전이 아닌 경우,
즉 작업자가 여럿일 경우 내가 끌어온 이후 다른 작업자에 의해 저장소가 변경된 경우,
이 상태에서 내가 수정 후 push 를 할 경우 요청이 거부됨
이 경우 병합(merge)이라는 작업을 진행하여 다른 사람의 업데이트 이력을 내 저장소에도 적용(우클릭 merge 하면 알아서 잘 처리해줌)
만약, 병합하지 않고 이력을 덮어쓰게 되면 다른 사람이 push 한 업데이트 내역이 사라짐</li>
 	<li>충돌 해결하기
위의 병합이 적용되지 않는 경우, 같은 파일의 동일한 위치를 수정할 경우 충돌이 발생(conflict)
충돌이 발생할 경우, 소스를 보고 수동으로 처리 해주어야 함

<hr />

</li>
 	<li>튜토리얼3 변경 이력의 통합</li>
 	<li>충돌상태 만들기
같은 파일을 수정 후 각각 커밋과 푸시를 진행하게 되면, 마지막 푸시 작업자에게 reject 가 발생함
내용수정 -&gt; git add sample.txt -&gt; git commit -m "commit의 설명 추가" -&gt; git push -&gt; 앞의 내용을 다른 저장소에서 수정 내용만 다르게 수행 시 reject</li>
 	<li>충돌 해결하기
파일의 수정된 내용이 다른 부분을 내려받은 소스에 표시되며, 이를 적절히 수정하여 commit 함.
적절히가 무서운 내용임, 아무리 편집해도 안될 경우 기존 로컬저장소에 수정했던 본인 파일을 따로 저장하고 새로 pull 후 수정하여 commit (최후의 방법)</li>
</ul>

<blockquote>Commit, Git, staging, 깃, 사용법, 스테이징, 커밋</blockquote>