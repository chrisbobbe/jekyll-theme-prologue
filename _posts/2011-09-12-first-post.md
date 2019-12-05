---
title: CAD 탐구영역
subtitle: 주변에 싸이코가 없으면 제가 싸이코라면서요?
author: 장대성 책임
layout: post
icon: fa-lightbulb
image: assets/images/pic03.jpg
profileimage: assets/images/speaker/dsjang.jpg
hashtags: 
  - 음성인식
  - 개망함
  - 나만궁금한
  - 팀역사
  - 사진은28세때
  - ipSDK
  - 좀도와주세요
---

#### ipSDK (iplatform Software Development Kit)

CAD (Computer Aided Design)는 셀 수 없을 만큼 다양한 산업에서 활용되고 있습니다. 이중에서도 최종 산출물인 도면의 제작은 가장 많은 사람들이 CAD 활용하고 있는 분야입니다. 도면 제작을 포함한 범용의 CAD는 대표적으로 오토데스크사의 AutoCAD와 Bentley Systems의 Micro Station이 있습니다. 이들은 각 DWG 와 DGN 포맷의 파일을 운용하는데, 디지털 도면 파일 포맷을 재정하는 국제 표준기구는 존재하지 않지만, 두 제품의 시장 점유율이 높아서 DWG와 DGN이 암묵적으로 국제 표준 포맷처럼 쓰이는 형국입니다. 국내의 경우에는 DWG 포맷을 대부분 사용하고 AutoCAD 점유율이 상당히 높은 편입니다. 이런 상황에서 우리의 CAD는 DWG 포맷 운영을 타깃으로 현재 ITC 7.1 프레임워크와 ODA 3.8+ 을 활용하여 2012년부터 본격적으로 CAD 개발을 시작하였습니다.

정보플랫폼(iPlatform)은 현재 우리의 CAD 플랫폼입니다. 정보를 기반으로 도면을 생성하는 컨셉으로 핵심적인 4대 기반 기술(정보태그, 자동축척, 내부참조, 통합프로젝트)을 탑재하고, 정보를 운용할 수 있는 다양한 응용 기술의 지원과, 도면 생성 모듈, IRX등의 3rd Party 모듈을 구동시킬 수 있는 아키텍처를 지원합니다. 

<span class="image left"><img src="{{ 'assets/images/post/dsjang/pic_01.png' | relative_url }}" alt="" /></span>
Figure 1 정보플랫폼 (iPlatform)

현재 우리 SW 개발 그룹은 건축 설계, 건설, 토목, 기계, 지반 등의 다양한 산업 분야의 CAE, CAD제품을 개발하고 보급하고 있습니다. 더불어, 같은 제품일지라도 국가별로 다양한 방식으로 차별적인 효용을 지원하고 있습니다. 이런 특성과 CAD의 범용적인 특성에 따라서, 아마도 우리의 CAD는 제품과 국가에 따라서 무수히 많은 CAD 응용 제품으로 만들어져야 할 것입니다. 현재는 nGenDrawing, eGenDrawing KR, eGenDrawing JP, CIM Drafter, ArchiDesign, iCAD 등이지만, 앞으로는 더욱 다양한 CAD 응용 제품 지원이 필요할 것입니다.

<span class="image left"><img src="{{ 'assets/images/post/dsjang/pic_02.png' | relative_url }}" alt="" /></span>
Figure 1 정보플랫폼 (iPlatform)

하나의 정보플랫폼을 공유하는 응용 제품이 많아질수록, 플랫폼의 코드 종속성(dependency)과 복잡성은 점차 증가하고, 유지보수의 어려움을 겪게 될 것이 자명합니다. 더불어 하나의 플랫폼을 공유함으로 UI와 같은 제품의 차별성을 가지는데, 한계가 있습니다. 이런 이유로 2018년부터 본격적으로 플랫폼으로 우리 회사의 요구사항에 맞는 CAD 플랫폼으로 구조화하여 SDK를 지원하고자 하는 노력이 본격적으로 시작되었습니다. 그림 3은 ipSDK의 개략적으로 요약한 것입니다.

<span class="image left"><img src="{{ 'assets/images/post/dsjang/pic_03.png' | relative_url }}" alt="" /></span>
Figure 3 ipSDK(iPlatform SDK)의 개요

ipSDK는 Drawing, Drafter와 같은 도면 자동 생성 목적의 응용 프로그램과, 건축, 토목 등의 분야별 LISP, 3rd Party를 모두 IRX (iplatform Runtime Extension)로 분류하고, 제품화할 수 있는 다양한 API 및 상속 가능한 클래스를 지원합니다. 지원 범위는 다음과 같습니다.

<span class="image left"><img src="{{ 'assets/images/post/dsjang/pic_04.png' | relative_url }}" alt="" /></span>
Figure 4 ipSDK의 지원범위

Iplatform 모듈은 MDI를 구성하는 App를 제시된 샘플코드로 재정의하면 새로운 CAD 응용제품의 기본 틀을 쉽게 만들 수 있도록 지원하며, 상속가능한 Doc, View, MultiDocTemplate으로 제품의 Branding과 UI, 인증, 명령 권한, 사용자 IO등을 모두 제어할 수 있습니다. iplatform외에 링크가능한 DLL들은 CAD 객체 및 명령의 생명 주기에 따른 이벤트 핸들을 활용할 수 있으며, C스타일 함수와 인터페이스 형태의 다양한 API로 정보 기반을 활용할 수 있습니다.
ipSDK 활용사례 및 기대효과
1.	단시간에 기계 분야의 범용 iCAD 제품화 완료
2.	응용 제품 마다 개별적인 Branding, 다국어처리, 인증 방식을 지원
3.	Iplatform의 지속적인 성능 개선과 최적화, 구조 개선 효과를 모든 제품에 자동 반영
4.	플랫폼과 제품간의 종속성 제거로 인한 유지보수 환경 개선
5.	제품별 차별화된 UI를 지원할 수 있는 가능성 제시 (2020.04 Drafter, 2020.09 iCAD)
6.	코드 복잡도 감소로 개발 생산성 강화, 명확한 코드 스타일 가이드 제시의 가능성
7.	플랫폼 담당자가 기반 기술에만 집중할 수 있는 환경, 반대로 응용 제품 개발자가 기반 구조의 깊은 이해 없이도 안정적으로 개발할 수 있는 환경
8.	빌드된 하나의 플랫폼으로 재빌드 없이 여러 제품의 개발을 스위칭 할 수 있는 환경
9.	응용 제품을 추가 설치 가능한 하나의 모듈로 처리할 수 있으므로, 여러 CAD 제품 군을 사용하는 고객에게 제품 파일 크기와, 설치 시간을 대폭 줄여줄 수 있다.

#### STT-Based PTM (Speech to Text based Presentation Mode) – 작성중
팀의 2019년 목표를 수립하면서 팀원 모두 하나의 기술과제 목표를 수립하고 달성하자는 미션을 만들었다. 워크숍을 통하여 팀의 기술 비전에 부합되는 개인기술과제를 구체화하고 세부적인 일정까지 작성해보았다. 하얗게 불태운 뒤, 그날 저녁, 우리 팀은 함께 고기를 먹으러 가고 있었다. 그리고 한 팀원이 물어보았다. “그래서? 우리만 하고 넌 안 함?” 그렇게 나도 하나의 과제를 하게 되었다. 이 과제를 선택한 이유가 무엇일까? 

##### 첫 번째 이유, 고객의 상황
CAD 제품의 출시 세미나를 참석하여 고객을 만나거나, 고객 지원 혹은 관련 분야의 사람들의 이야기를 들으면서, 우리의 고객인 건축 설계자들이 그들의 고객인 건축주에게 설계 결과물을 효과적으로 전달하고 싶어한다는 점을 알게 되었다. 설계 결과에 대한 건축주와 설계자간의 소통이 원활하지 않을 경우에 다양한 법적 분쟁에 휘말리기도 하고, 설계 변경의 원인이 되기도 하기 때문에, 소통을 위한 효과적인 발표가 사업체의 생존여부에도 굉장히 중요한 요소이다.

##### 두 번째 이유, 제품의 특성
우리의 CAD는 정보를 기반으로 하기 때문에, 단순한 선형의 조합을 결과물로 만들어내는 기존의 범용 CAD보다 도면 결과물을 보다 개념적으로 다루는데 유리하다. 즉, 도면을 읽는 자가 단순히 선들이 그려진 형태를 보고 마감으로 읽는 것이 아니라, 프로그램 내에서 선들의 집합을 마감이라는 하나의 정보단위로 구성할 수 있다. 정보단위로 구성될 수 있다는 점은 도면을 단순하게 출력하는 것 이상으로 다양하게 응용이 가능하다.

##### 세 번째 이유, FUN한 과제 선정의 솔선수범
단기에 직접적으로 전략 과제로 활용될 수 있는 기술의 검토는 조직의 단기 성과를 위해서는 분명하게 의미가 있다. 그리고 대부분의 현업 과제들은 다양한 이해관계에 따라서, 단기 목표 비중이 많다. 개인이 선정한 기술 과제가 팀의 기술 로드맵과 부합되는 것은 성과에 의미를 부여하기 위해서 굉장히 중요하다. 하지만, 이 것에만 집중한다면, 단순히 할 것이 늘었다고 생각될 수도 있다. 따라서 다소 억지스럽지만, 절대로 CAD와 관련되지 않을 것 같은 기술을 활용하는 과제를 선정하여, FUN에도 비중을 두기를 바랐다.

##### 종합적인 이유
우리 CAD 제품을 사용하는 고객이 자신의 고객에게 설계 도면을 설명하고 소통하는 과정은 매우 중요하다. 우리의 CAD는 정보단위로 도면을 작성할 수 있음으로 설명 과정에서 이를 지칭하거나, 분류하여 관리할 수 있다. 이 과정을 효율적으로 지원할 방법은 다양하지만, “FUN”을 중요하게 고려할 때, 다음의 결론을 만들었다.

“음성으로 하게 해주면 어떨까?”
<span class="image left"><img src="{{ 'assets/images/post/dsjang/pic_05.png' | relative_url }}" alt="" /></span>

##### STT (Speech to Text)
STT는 Speech to Text의 약자로, 음성을 문자로 변환하는 기술을 통칭한다. 대부분 음성… (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요) (음성 인식의 개요)

##### STT API 
1. Google Cloud Speech API
음성 인식 및, 동영상 음성 인식 60분까지 무료, 60분 초과시.. 15초당. 0.006달러..  (월 단위), 15.14 -> 30초임. 5초 -> 15초임 참고 : https://cloud.google.com/speech-to-text/pricing
Python, Node.js, Java, C++, C#, Go, PHP, Ruby (And,IOS)
2. Microsoft Speech SDK - C++ Console Sample Test 
상업적 배포는 가능함. 사용자에게 사용권 조항 명시, 음성 수집 동의도 구해야 함.
https://csspeechstorage.blob.core.windows.net/drop/license201809.html
C#,C++,Java,Rest(영문), (Visual Studio NuGet sdk)
3. IBM Waston STT
https://www.ibm.com/legal/kr/ko/?lnk=flg-tous-krko
Curl, Go, Java, Node, Python, Ruby
4. Naver CSR (Clova Speech Recognition) - STT Rest API
http://docs.ncloud.com/ko/naveropenapi_v3/speech/recognition-api.html
하루 1만자 무료
java,php,node.js,python,c#

##### MIDAS에서 사용하는 STT 방식
LVCSR(Large Vocabulary Continuous Speech Recognition): 대어휘 연속어 음성 인식
DNN-HMM 기반 연속어 음성인식

<span class="image left"><img src="{{ 'assets/images/post/dsjang/pic_06.png' | relative_url }}" alt="" /></span>

##### STT를 통한 명령 수행에 필요한 서브 기술들
1.	MCI (Media Control Interface)를 활용한 음성 녹음 및 버퍼 재생

<span class="image left"><img src="{{ 'assets/images/post/dsjang/pic_07.png' | relative_url }}" alt="" /></span>
<span class="image left"><img src="{{ 'assets/images/post/dsjang/pic_08.png' | relative_url }}" alt="" /></span>
<span class="image left"><img src="{{ 'assets/images/post/dsjang/pic_09.png' | relative_url }}" alt="" /></span>

2.	음성 분석용 RIFF(Resource Interchange File Format) 변환

<span class="image left"><img src="{{ 'assets/images/post/dsjang/pic_10.png' | relative_url }}" alt="" /></span>

3.	음성 인식 서버 통신 (HTTP POST, Wininet API)
4.	인식 품질 개선 및 인식 명령의 처리

<span class="image left"><img src="{{ 'assets/images/post/dsjang/pic_11.png' | relative_url }}" alt="" /></span>

5.	전체 시스템 개요