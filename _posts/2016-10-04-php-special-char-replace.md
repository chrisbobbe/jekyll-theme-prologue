---
title: php에서 문자열에 있는 특수기호, 알파벳, 숫자 등을 골라서 치환(변경)하는 법
author: Goosia
layout: post
comments: true
---

<h2>특수문자만 골라서 제거하자!</h2>
<pre><code>preg_replace("/[ #\&\+\-%@=\/\\\:;,\.'\"\^`~\_|\!\?\*$#<>()\[\]\{\}]/i", "", $string);</code></pre>

<h2>알파벳만 남기고 모조리 제거하자!</h2>
<pre><code>preg_replace("/[^a-z]/i", "", $string);</code></pre>

<h2>숫자만 남기고 모조리 제거하자!</h2>
<pre><code>preg_replace("/[^\d]/i", "", $string);</code></pre>

<h2>숫자만 제거하자!</h2>
<pre><code>preg_replace("/[\d]/i", "", $string);</code></pre>

<h2>한글만 남기고 모조리 제거하자!</h2>
<pre><code>preg_replace("/[ #\&\+\-%@=\/\\\:;,\.'\"\^`~\_|\!\?\*$#<>()\[\]\{\}0-9a-z]/i", "", $string);</code></pre>

이 정도면 다른 응용은 다들 하겠죠?
못하면 공부하세용 ㅎㅎ

<blockquote>php, preg_replace, 기호, 문자열, 문자열 변경, 문자열 치환, 변경, 숫자, 영문, 치환, 특수문자, 한글</blockquote>