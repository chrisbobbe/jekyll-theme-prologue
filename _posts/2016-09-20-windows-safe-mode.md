---
title: 윈도우10 안전모드 사용법
author: Goosia
layout: post
---

hp 로고 후 마우스만 떨렁 떠있어서 좌절 끝에 뭘 어찌 했는지도 모르겠고 esc 키 눌러서 hp 부팅을 찾아서 부팅한 느낌인데.

아무튼 윈도우10은 안전모드를 띄우려면 아래 설정을 해둬야 한답니다.

관리자 명령 프롬프트 창을 띄운 후
```> bcdedit /set {default} bootmenupolicy legacy```

혹시 라도 되돌리고 싶을 경우
```> bcdedit /set {default} bootmenupolicy standard```

자세한 내용은 http://prolite.tistory.com/638 참고!

<blockquote>hp envy 노트북, win10, windows10, 안전모드, 윈도우10</blockquote>