---
title: 자바스크립트 FileReader를 사용하여 미리보기 및 진행바 표현하기
author: Chris
layout: post
icon: fa-lightbulb-o
---

자바스크립트 FileReader를 사용하여 미리보기 및 진행바 표현하기

<img src="{{ 'assets/images/post03-pic01.png' | relative_url }}" alt="preview progress bar" />

스타일 부분(style) 
<pre class="lang:css">
#progress_bar {margin: 10px 0;padding: 3px;border: 1px solid #000;font-size: 14px;clear: both;opacity: 0;-moz-transition: opacity 1s linear;-o-transition: opacity 1s linear;-webkit-transition: opacity 1s linear;}
#progress_bar.loading {opacity: 1.0;}
#progress_bar .percent {background-color: #99ccff;height: auto;width: 0;}
.collapse { display:none; }
</pre>

스크립트 부분(script)
<pre class="lang:javascript">
    var progress = document.querySelector('.percent');
    var insPic =
        (function loadImageFile() {
        if (window.FileReader) {
            var ImagePre;
            var ImgReader = new window.FileReader();
            var fileType = /^(?:image\/bmp|image\/gif|image\/jpeg|image\/png|image\/x\-xwindowdump|image\/x\-portable\-bitmap)$/i;
            progress.style.width = '0%';
            progress.textContent = '0%';
            ImgReader.onerror = errorHandler;
            ImgReader.onprogress = updateProgress;
            ImgReader.onabort = function(e) { alert('File read cancelled'); };
            ImgReader.onloadstart = function(e) { document.getElementById('progress_bar').className = 'loading'; };

            ImgReader.onload = function (Event) {
                if (!ImagePre) {
                    var newPreview = document.getElementById("Preview");
                    ImagePre = new Image();
                    //ImagePre.style.width = "75px";
                    //ImagePre.style.height = "75px";
                    newPreview.appendChild(ImagePre);
                }
                ImagePre.src = Event.target.result;

                // Ensure that the progress bar displays 100% at the end.
                progress.style.width = '100%';
                progress.textContent = '100%';
                setTimeout("document.getElementById('progress_bar').setAttribute('class', 'collapse');", 2000);
            };

            return function () {

                var img = document.getElementById("picture").files;
                if (!fileType.test(img[0].type)) {
                    alert("이미지 파일을 업로드 하세요");
                    return;
                }
                ImgReader.readAsDataURL(img[0]);
            }
        }
        document.getElementById("Preview").src = document.getElementById("picture").value;
    })();

    function errorHandler(evt) {
        switch(evt.target.error.code) {
            case evt.target.error.NOT_FOUND_ERR:
                alert('File Not Found!');
                break;
            case evt.target.error.NOT_READABLE_ERR:
                alert('File is not readable');
                break;
            case evt.target.error.ABORT_ERR:
                break; // noop
            default:
                alert('An error occurred reading this file.');
        };
    }

    function updateProgress(evt) {
        // evt is an ProgressEvent.
        if (evt.lengthComputable) {
            var percentLoaded = Math.round((evt.loaded / evt.total) * 100);
            // Increase the progress bar length.
            if (percentLoaded < 100) {
                progress.style.width = percentLoaded + '%';
                progress.textContent = percentLoaded + '%';
            }
        }
    }
</pre>

본문부분(HTML) - 굵은 빨간색으로 표시한 곳이 핵심부분이며 나머지는 위 사진에 나타만 전체소스입니다.
그 밖에 스타일은 알아서. ㅎㅎ

<pre class="lang:html">
<!-- 사진등록 -->
<div class="agree_layout01">
    <div class="layout01">
        <div class="title01">사진등록<span><a href="#" onclick="closePic();"><img src="/images/btn_close02.png"></a></span></div>
        <div class="contents01">
            <div class="photo01">
                <table class="register01">
                    <tr>
                        <th><img src="/images/login/icon01.png"> 사진등록 :</th>
                        <td>
                            <span class="img01" id="Preview"></span>
                            <span class="mo01" id="btnReg"><img src="/images/btn_modify01.png"></span>
                            <input type="file" id="picture" name="picture" accept="image/*" onchange="insPic();" class="collapse">
                            <div id="progress_bar" class="collapse"><div class="percent">0%</div></div>
                        </td>
                    </tr>
                </table>
                <div class="photo01_btn"><a href="#" id="regPicture"><img src="/images/btn_upload02.png"></a></span></div>
            </div>
        </div>
    </div>
</div>
<!-- 사진등록 끝-->
</pre>