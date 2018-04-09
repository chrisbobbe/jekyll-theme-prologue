---
title: 서버(FreeBSD, Linux 등의 Unix 호환운영체제)내의 텍스트 파일내용 한꺼번에 변경하기(문자열 치환, 변경)
author: Goosia
layout: post
---

<hr />
<blockquote>one line command, 문자열 변경, 문자열 치환, 여러파일 변경</blockquote>
<hr />

유닉스 호환 시스템에서 문자열 치환, 변경 등의 방법은 상당히 많이 있다.
필자는 perl -pi , mysql의 replace 등 그때 그때 생각나는대로 쓰는 편이다.

갑자기 사용하려고 할때 정확하게 기억나지 않는 경우가 많아 기록해둔다.
(이 문서는 계속 상황따라 생각날때 마다 변경될 예정임)

현재(커서가 위치한) 디렉토리에 dbconfig.php 파일에 old_ip 를 new_ip 로 변경
```sed -i 's/old_ip/new_ip/g' dbconfig.php```

(응용)현재 디렉토리 하부에 dbconfig.php 파일안에 old_ip 를 new_ip 로 전체 변경
```find . -name "dbconfig.php" -exec sed -i 's/old_ip/new_ip/g' {} \;```