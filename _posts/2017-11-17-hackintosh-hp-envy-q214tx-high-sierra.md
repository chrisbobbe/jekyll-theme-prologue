---
title: HP Envy 15-Q214TX 랩탑에 하이 시에라 [High Sierra] 클린 설치
author: Goosia
layout: post
---

안녕하세요. 커맥(커스텀맥)를 접하고 7일만에 랩탑에 설치를 성공하였습니다.
초반 4일은 개념을 몰라서 삽질을 했고, 후반 3일은 Post Install 작업을 하느라 5번 정도 설치하면서 나름의 안정화를 한거 같네요.

제 노트북의 스펙은
HP ENVY 15-Q214TX
인텔 / 코어i7-4세대 / 하스웰 / i7-4712HQ (2.3GHz) / 39.62cm(15.6인치) / 1920x1080 / LED백라이트 / 눈부심방지 / 터치스크린 / 16GB / DDR3L / 1TB / 8GB(캐시) / HD 4600 / 지포스 GTX850M / 4GB / 듀얼 그래픽 / 1Gbps 유선랜/ 802.11 n/ac 무선랜 / 블루투스 4.0 / HDMI / 웹캠 / USB 3.0 / 멀티 리더기 / 숫자 키패드 / 블록 키보드 / 키보드 라이트 / 윈도우8.1 / 29.9mm / 2.6Kg / 색상: 실버

보드 : 22A0 MotherBoard HM87 chipset
그래픽 : HD4600 graphics (1080p panel), GTX 850M[못잡음]
와이파이 : Intel. 3160AC[못잡음]
이더넷 : RTL8111/8168/8411
입니다.

결과는 외장 그래픽 GTX 850m 과 인텔 3160ac 와이파이, SD카드 리더기를 뺀 나머지를 모두 잡았네요.
이 노트북은 화면 터치가 되는 모델인데 화면 터치까지 잘 동작합니다.
다만, 트랙패드는 기본적인 움직임과 터치 위 아래 스크롤을 제외하고 다 안되는 듯...
오디오는 소리가 나오기전 툭툭 거리면서 스피커를 긁는 상당히 자극적인 소리가 납니다.

<a href="assets/images/hackintosh/스크린샷-2017-11-15-오후-11.13.25.png"><img class="alignnone size-full wp-image-127" src="assets/images/hackintosh/스크린샷-2017-11-15-오후-11.13.25.png" alt="" width="596" height="367" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-4.54.48.png"><img class="alignnone size-full wp-image-115" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-4.54.48.png" alt="" width="618" height="431" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-8.50.11.png"><img class="alignnone size-full wp-image-116" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-8.50.11.png" alt="" width="623" height="225" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-4.44.34.png"><img class="alignnone size-full wp-image-111" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-4.44.34.png" alt="" width="777" height="908" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-4.49.00-1.png">
</a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-4.47.41.png"><img class="alignnone size-full wp-image-112" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-4.47.41.png" alt="" width="772" height="898" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-4.48.31.png"><img class="alignnone size-full wp-image-113" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-4.48.31.png" alt="" width="775" height="907" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-4.49.00-1.png"><img class="alignnone size-full wp-image-114" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-4.49.00-1.png" alt="" width="777" height="905" /></a>

<a href="assets/images/hackintosh/b65791b654753ef92c6dade295269ad2.png"><img class="alignnone size-large wp-image-130" src="assets/images/hackintosh/b65791b654753ef92c6dade295269ad2-1024x576.png" alt="" width="780" height="439" /></a><a href="assets/images/hackintosh/5bfe966b217525e7158cf6988d31af5e.png"><img class="alignnone size-large wp-image-129" src="assets/images/hackintosh/5bfe966b217525e7158cf6988d31af5e-1024x576.png" alt="" width="780" height="439" /></a>

[이용중인 앱]

<a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.25.43.png"><img class="alignnone size-full wp-image-122" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.25.43.png" alt="" width="735" height="963" /></a>

남은 여정 :
1. 오디오 툭툭 소리 안나게 하기. =&gt; rehabman git 안에 있는 스크립을 다음과 같이 실행하여 해결 "patch_hda.sh ALC290"
2. 와이파이 장치 사서 무선 적용하기. =&gt; 비쌈, 패쓰 -_-; 안써!
3. SD Card 리더기 되게 하기.
4. 외장 그래픽 카드 되게하기...정말 안되는거니 ㅠ.ㅠ
5. 부팅 후 로그인 화면에서 10초간 버벅임 현상 잡기.
6. 잘되면 256 SSD 하나 사서 다시 깔기. =&gt; 그냥 기존 1테라 하드를 쪼개서 맥, 윈도우10. 데이터 로 설치 사용

&nbsp;

&nbsp;

&nbsp;

<strong>HP ENVY 15-Q214TX에 하이 시에라 설치하기</strong>

&nbsp;

1. 설치 전 준비물

- 맥OS 부팅 USB를 제작할 리얼맥과 8기가 이상의 USB 혹은 외장 하드

<em>   (혹은 윈도우 피씨에 가상모드, 윈도우에서 만드는 프로그램이 있는거 같아요.</em>

<em>   전 맥미니 2009가 있어서 그걸로 하다가 이게 갑자기 하이 시에라 업그레이드 이후에 부팅이 안되서 윈도우에 vmware 설치해서 했습니다.</em>

<em>   컴퓨터 한대로 하드 바꿔 끼면서 어흑.)</em>

- 커맥(커스텀맥)를 설치할 랩탑

- USB에 넣을 하이 시에라 설치 이미지 , 하이 시에라 다운로드 방법 - <a href="https://support.apple.com/ko-kr/HT201475" target="_blank" rel="noopener">https://support.apple.com/ko-kr/HT201475</a>
<div class="ap_parser"></div>
- 클로버 EFI, 클로버 컨피그레이터

<a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-4.49.00-1.png">
</a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.22.32.png"><img class="size-large wp-image-117 alignnone" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.22.32.png" alt="" width="275" height="244" /></a>

(일부 파일은 설치 후 필요합니다, 뒤에 다시 설명할께요.)

- 바이오스에서 Boot Legacy 를 enable 하기.

- 버츄어 모드 enable 하기 (vmware 사용 시)

&nbsp;

2. 맥 부팅 USB 제작

- 리얼맥 혹은 윈도우 가상서버 안의 맥에서 USB를 인식시키고 파티션을 나누지 마시고 한개로 포맷은 Mac OS 확장(Extended) 저널링, 설계는 GUID 파티션맵을 선택 후 지우기 (이름은 usb 같이 일단 짧은 걸로)

<a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.35.49.png"><img class="alignnone size-large wp-image-120" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.35.49.png" alt="" width="780" height="492" /></a>

- 포맷된 USB 에 하이 시에라 이미지 넣기. <a href="https://support.apple.com/ko-kr/HT201372" target="_blank" rel="noopener">https://support.apple.com/ko-kr/HT201372</a>

- 터미널을 여시고 (코맨트 - 스페이스 누르고 스팟라이트 열리면 terminal) 아래 명령을 넣어 주세요.
<pre class="theme:inlellij-idea font:adobe-source-sans lang:sh decode:true">sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/usb
</pre>
&nbsp;

뒤에 Volumes 다음에는 포맷할 때 넣은 이름입니다.

장비 스펙에 따라 다르겠지만 30분 정도 예상하시고 진행하시면 됩니다.

- 클로버 EFI 로 애플에서 제작하지 않은 컴퓨터에 macOS를 설치할 수 있게 속이면서 부팅가능하게 해줍니다.

- 클로버 설치 및 다운로드 등등은 다른 게시물에도 많으니!! 아래와 같이 설정합니다.

<a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.27.54.png"><img class="alignnone size-full wp-image-118" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.27.54.png" alt="" width="643" height="456" /></a>

<span style="color: #ff0000;"><strong>- 아래 설치를 누르시고 완료를 하신 기본 파일을 어딘가에 백업해두시고 설치 화면이 나올때까지 헤딩(삽질)을 시작합니다.</strong></span>

- 설치 화면 진입이 된 저의 설정 및 스샷은 아래와 같습니다.

<a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.59.29.png"><img class="alignnone size-large wp-image-131" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.59.29-1024x578.png" alt="" width="780" height="440" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.59.38.png"><img class="alignnone size-large wp-image-132" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.59.38-1024x575.png" alt="" width="780" height="438" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.59.46.png"><img class="alignnone size-large wp-image-133" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.59.46-1024x575.png" alt="" width="780" height="438" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.00.01.png"><img class="alignnone size-large wp-image-134" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.00.01-1024x572.png" alt="" width="780" height="436" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.00.09.png"><img class="alignnone size-large wp-image-135" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.00.09-1024x576.png" alt="" width="780" height="439" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.00.22.png"><img class="alignnone size-large wp-image-136" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.00.22-1024x574.png" alt="" width="780" height="437" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.00.35.png"><img class="alignnone size-large wp-image-137" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.00.35-1024x573.png" alt="" width="780" height="436" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.00.44.png"><img class="alignnone size-large wp-image-138" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.00.44-1024x575.png" alt="" width="780" height="438" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.00.52.png"><img class="alignnone size-large wp-image-139" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.00.52-1024x580.png" alt="" width="780" height="442" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.01.00.png"><img class="alignnone size-large wp-image-140" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.01.00-1024x572.png" alt="" width="780" height="436" /></a>

- Boot Graphics, Cpu, Graphics 는 기본이라 스샷하지 않았습니다. (수정내용이 없음)

- 첨부된 EFI 파일을 다 덮어 쓰시거나, 커스텀 하신 분이라면 EFI/CLOVER/config.plist, EFI/CLOVER/ACPI/patched/SSDT-HACK.aml, EFI/CLOVER/ACPI/patched/SSDT.aml 을 가져다 쓰시면 됩니다.

- 제 설치 USB의 구조입니다.

<a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.10.15-1.png"><img class="alignnone size-large wp-image-142" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.10.15-1-741x1024.png" alt="" width="741" height="1024" /></a>

- 필요없는게 있을 수 도 있습니다. 막 가져다 넣고 정리는 않했어요.

- 1분 이상 반응이 없다면 에러라고 보시고 많은 방법들을 적용하여 설치 화면이 뜨도록 하세요. (무책임 한거 아닙니다. [정색])

&nbsp;

3. 하이 시에라 설치 하기 [전 맥을 썻던 사람이라 이 부분에서 어려움이 없어서 특별히 코맨트 할 내용이 생각나지 않네요.]

- 설치 언어 선택

- 파티션 설정

- 설치 파일 복사

- 재시작 후 설치 파일이 복사된 하드를 선택하여 부팅

- 시간 선택

- 계정 생성, 애플 계정 로그인은 천천히 하셔도 됩니다.

- 이 랩탑은 로그인창이 나타난 이후 HDMI 로딩작업이 있나봅니다. 10초 정도 로그인 화면에서 버벅임이 나타난 후 확장 모니터에 화면이 나온 후 정상속도가 나옵니다. 로그인창에서 버벅인다고 당황하지 마세요... 이건 어떻게 안정화 시켜야 할지 아직 방법을 모르겠네요.

&nbsp;

4. 설치 후 부팅 USB 없이 부팅하게 만들기

- 클로버 EFI 로 부팅가능한 기본 작업 하시고 부팅 될때까지 헤딩하시는 겁니다.

- 이때 USB 꼽힌 상태인데 하드로 부팅이 안될 경우 설치된 하드 디스크를 USB 설치 이미지로 부팅 하여 설치 화면 중 첫화면인 언어 선택 화면에서 상단 사과 마크 누르고 시동디스크(스타트 디스크) 선택을  딱 한번만 하시면 됩니다. [이후에 막 누르면 이 상태에서 시동디스크 선택을 계속 해야됩니다, 설치 화면을 띄우는 시간은 상당히 오래 걸리므로 이 부분 주의하세요. 꿀팁임]

<a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.27.54.png"><img class="alignnone size-full wp-image-118" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-10.27.54.png" alt="" width="643" height="456" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.34.18.png"><img class="alignnone size-large wp-image-143" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.34.18-1024x575.png" alt="" width="780" height="438" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.34.28.png"><img class="alignnone size-large wp-image-144" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.34.28-1024x572.png" alt="" width="780" height="436" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.34.45.png"><img class="alignnone size-large wp-image-145" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.34.45-1024x576.png" alt="" width="780" height="439" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.34.52.png"><img class="alignnone size-large wp-image-146" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.34.52-1024x575.png" alt="" width="780" height="438" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.34.59.png"><img class="alignnone size-large wp-image-147" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.34.59-1024x569.png" alt="" width="780" height="433" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.35.09.png"><img class="alignnone size-large wp-image-148" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.35.09-1024x570.png" alt="" width="780" height="434" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.35.16.png"><img class="alignnone size-large wp-image-149" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.35.16-1024x573.png" alt="" width="780" height="436" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.35.25.png"><img class="alignnone size-large wp-image-150" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.35.25-1024x576.png" alt="" width="780" height="439" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.35.32.png"><img class="alignnone size-large wp-image-151" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.35.32-1024x574.png" alt="" width="780" height="437" /></a><a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.35.41.png"><img class="alignnone size-large wp-image-152" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.35.41-1024x573.png" alt="" width="780" height="436" /></a>

- 부팅 및 오디오가 다 잡힌 부팅 디스크 목록 [물런  kext 파일들은 OS가 설치된 라이브러리 Extensions에 존재합니다.]

<a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.40.59-1.png"><img class="alignnone size-full wp-image-153" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.40.59-1.png" alt="" width="620" height="710" /></a>

- /Library/Extensions

<a href="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.43.24-1.png"><img class="alignnone size-full wp-image-154" src="assets/images/hackintosh/스크린샷-2017-10-15-오후-11.43.24-1.png" alt="" width="648" height="773" /></a>

- 첨부파일 macOS_EFI.zip 은 OS가 설치 된  EFI 의 내용입니다.

- 첨부파일 Extensions.zip 은 /Library/Extensions 의 내용입니다.

- 하지만 위 파일은 다 해당 위치에 넣어도 안될꺼에요. 이제 그걸 해봅시다.

- SSDT를 수정하기 위해 우리는 Rehabman 님의 자료가 필요합니다. <a href="https://github.com/RehabMan/HP-Envy-Q-DSDT-Patch" target="_blank" rel="noopener">https://github.com/RehabMan/HP-Envy-Q-DSDT-Patch</a>

- 이 자료를 이용하는 방법은 <strong><a href="https://www.tonymacx86.com/threads/guide-hp-envy-haswell-series-j-k-q-n-using-clover-uefi.232963/" target="_blank" rel="noopener">https://www.tonymacx86.com/threads/guide-hp-envy-haswell-series-j-k-q-n-using-clover-uefi.232963/</a></strong>

- 이 링크의 Post Installation 부분입니다.

- 요약을 해보자면 git 을 설치하고, 패치를 다운로드 받은 후에  설치하고 make 후 설치해서 hibernate 패치 후에 config.plist 를 EFI로 옮기는 내용입니다.

&nbsp;

자.. 이제 USB 를 빼고 부팅을 해볼까요?

오디오 및 등등이 다 잘 되죠?

축하드려요~

&nbsp;

지금도 맥의 console.log 를 보면서 안정화를 해보려고 하는데 이거 참 자잘자잘한것들이 신경 쓰이게 하네요.

깔끔하게 안되고.. 이래서 결국 리얼맥을 사나봅니다.

&nbsp;

아, 진행하시다가 랩탑의 기본 DSDT, SSDT 는 클로버 부팅 후 하드디스크 선택 화면에서 F3 을 누르면  EFI/CLOVER/ACPI/origin 에 저장됩니다.

그걸 MaciASL 로 열어서 compile 을 하시면 에러가 나와요. 그걸 잡는 과정이 위의 patch 된 파일을 적용하는 내용입니다.

<a href="assets/images/hackintosh/스크린샷-2017-10-16-오전-12.02.20-1.png"><img class="alignnone size-full wp-image-155" src="assets/images/hackintosh/스크린샷-2017-10-16-오전-12.02.20-1.png" alt="" width="648" height="694" /></a>

- <strong>IORegistryExplorer 는 현재 시스템 상황을 보는 프로그램이에요.</strong>

첨부파일 :
<a href="assets/images/hackintosh/USB_EFI.zip">USB EFI 파일</a>
<a href="assets/images/hackintosh/macOS_EFI.zip">설치된 macOS EFI 파일</a>
<a href="assets/images/hackintosh/Extensions.zip">설치된 맥의 라이브러리 파일</a>

그럼 이만 총총.

랩탑에 맥을 설치하면서 쓰면 쓸 수록 결국 리얼맥으로 가게되는건 진실.

이래서 애플에서 굳이 이 부분에 제동을 안거는 듯.

<blockquote>CloverEFI, Custom Mac, EFI, ENVY, Hackintosh, High Sierra, HP, HP ENVY 15 Q Series, kext, Q214TX, 커스텀맥, 하이 시에라, 해킨토시</blockquote>