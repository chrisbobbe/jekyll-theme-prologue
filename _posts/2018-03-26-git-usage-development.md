---
title: Git 정리[발전편]
author: Goosia
layout: post
---

<pre class=""><a href="https://backlog.com/git-tutorial/kr/stepup/stepup1_1.html" target="_blank" rel="noopener"> </a></pre>
<pre class=""><a href="https://backlog.com/git-tutorial/kr/stepup/stepup1_1.html" target="_blank" rel="noopener">https://backlog.com/git-tutorial/kr/stepup/stepup1_1.html
</a></pre>

<hr />

<section>
<h1>브랜치 (Branch)</h1>
<ul>
 	<li><a class="Selected" href="https://backlog.com/git-tutorial/kr/stepup/stepup1_1.html">브랜치란?
</a>여럿의 개발자가 동일한 소스코드를 충돌없이 처리할 수 있도록 물리적인 코드의 분할을 해주는 기능
저장소 최초 생성시 master 브랜치가 기본 생성됨.</li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup1_2.html">브랜치 만들기</a>
통합 브랜치 : 언제든지 배포할 수 있는 버전을 만들 수 있어야 하는 브랜치(Stable Release), 일반적으로 master 로 씀
토픽 브랜치 : 기능 추가나 버그 수정과 같은 단위 작업을 위한 브랜치로,  통합 브랜치에서 만들어냄-복사함(피처-Feature 브랜치라고도 부름)</li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup1_3.html">브랜치 전환하기</a>
체크아웃 명령을 실행하여 브랜치를 전환할 수 있음.
선택된 브랜치는 항상 마지막 커밋 내용이 작업 트리에 나타남.
브랜치가 전환 후 부터 진행된 커밋들은 전환된 브랜치로 적용됨.
HEAD : 현재 사용 중인 브랜치의 선두부분, HEAD를 이동하면 브랜치가 변경됨.(~, ^ 을 사용하여 현재 위치로부터 몇번째 원본인지 지정할 수 있음, HEAD~3, HEAD~2 or HEAD~1^1
stash : 커밋하지 않은 변경 내용이나 새롭게 추가한 파일이 인덱스와 작업 트리에 남아 있는 채로 다른 브랜치로 전환하면, 그 변경 내용은 기존 브랜치가 아닌 전환된 브랜치에서 커밋 할 수 있습니다.
단, 변경 내용이 전환한 브랜치에서 수정되지 않은 내용이어야 함
stash 란, 파일의 변경 내용을 커밋하기 전까지 일시적으로 기록해두는 영역</li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup1_4.html">브랜치 통합하기</a>
브랜치를 통합방법은 merge, rebase 2가지 방법이 있음
상황 : bugfix 브랜치의 수정 사항을 master 브랜치에 병합하는 경우
merge(병합, 머지) :
1. master 에 수정 사항이 없을 경우 =&gt; 바로 병합 (fast-forward)
2. master 에 수정 사항이 있을 경우 =&gt; 병합 커밋(merge commit) 실행 후 통합
note : 병합 실행이 가능하더라도 non fast-forward 옵션으로 bugfix 브랜치를 유지 할 수 있음
rebase(리베이스)</li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup1_5.html">토픽 브랜치와 통합 브랜치에서의 작업 흐름 파악하기</a></li>
</ul>
</section><section>
<h1>튜토리얼1 브랜치를 사용해 보자</h1>
<ul>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup2_1.html">0. 사전 준비</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup2_2.html">1. 브랜치 만들기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup2_3.html">2. 브랜치 전환하기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup2_4.html">3. 브랜치 병합하기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup2_5.html">4. 브랜치 삭제하기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup2_6.html">5. 동시에 여러 작업하기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup2_7.html">6. 병합할 때 발생하는 충돌 해결하기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup2_8.html">7. rebase로 병합하기</a></li>
</ul>
</section><section>
<h1>원격 저장소</h1>
<ul>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup3_1.html">pull (가져와 병합하기)</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup3_2.html">fetch (가져오기)</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup3_3.html">push (밀어넣기)</a></li>
</ul>
</section><section>
<h1>태그 (Tag)</h1>
<ul>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup4_1.html">태그 (Tag)</a></li>
</ul>
</section><section>
<h1>튜토리얼2 태그 사용하기</h1>
<ul>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup5_1.html">0. 사전 준비</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup5_2.html">1. 태그 추가하기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup5_3.html">2. 주석 달린 태그를 추가하기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup5_4.html">3. 태그 삭제하기</a></li>
</ul>
</section><section>
<h1>커밋 변경하기</h1>
<ul>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup6_1.html">이전에 작성한 커밋 수정하기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup6_2.html">이전에 작성한 커밋 지우기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup6_3.html">커밋을 버리고 특정 버전으로 다시 되돌아가기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup6_4.html">다른 브랜치로부터 특정 커밋을 가져와서 내 브랜치에 넣기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup6_5.html">커밋 이력 편집하기</a></li>
 	<li><a class="Large" href="https://backlog.com/git-tutorial/kr/stepup/stepup6_6.html">브랜치 상의 커밋을 하나로 모아 병합하기</a></li>
</ul>
</section><section>
<h1>튜토리얼 3: 커밋을 변경해보자!</h1>
<ul>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup7_1.html">1. commit <span class="Hyphen">--</span>amend</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup7_2.html">2. revert</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup7_3.html">3. reset</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup7_4.html">4. cherry-pick</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup7_5.html">5. rebase -i 으로 커밋 모두 통합하기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup7_6.html">6. rebase -i 으로 커밋 수정하기</a></li>
 	<li><a href="https://backlog.com/git-tutorial/kr/stepup/stepup7_7.html">7. merge <span class="Hyphen">--</span>squash</a></li>
</ul>
</section>

<blockquote>Commit, Git, staging, 깃, 사용법, 스테이징, 커밋</blockquote>