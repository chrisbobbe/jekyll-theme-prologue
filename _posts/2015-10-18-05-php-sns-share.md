---
title: 현재 웹페이지가 소셜미디어(Social Media, SNS)에 공유 혹은 좋아요 된 수를 가져오는 php 함수
author: Goosia
layout: post
---

* 가끔 커스텀 디자인을 요구하는 경우가 발생하는데 주요 소셜미디어(SNS, Social Media)는 현재 페이지의 url을 보내면 현재 공유 혹은 좋아요 된 수치를 제공한다.

 
```
// Twitter 가져오기
function get_tweets($url) {
    $json_string = file_get_contents('http://urls.api.twitter.com/1/urls/count.json?url=' . $url);
    $json = json_decode($json_string, true);

    return intval( $json['count'] );
}

// 페이스북 좋아요 수 가져오기
function get_likes($url) {
    $json_string = file_get_contents('http://graph.facebook.com/?ids=' . $url);
    $json = json_decode($json_string, true);

    return intval( $json[$url]['shares'] );
}

// 구글 +1 가져오기
function get_plusones($url) {
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, "https://clients6.google.com/rpc");
    curl_setopt($curl, CURLOPT_POST, 1);
    curl_setopt($curl, CURLOPT_POSTFIELDS, '[{"method":"pos.plusones.get","id":"p","params":{"nolog":true,"id":"' . $url . '","source":"widget","userId":"@viewer","groupId":"@self"},"jsonrpc":"2.0","key":"p","apiVersion":"v1"}]');
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-type: application/json'));
    $curl_results = curl_exec ($curl);
    curl_close ($curl);

    $json = json_decode($curl_results, true);

    return intval( $json[0]['result']['metadata']['globalCounts']['count'] );
}

// 링크드인 쉐어수 가져오기
function get_linkedin_shares($url) {
  $json_string = file_get_contents("http://www.linkedin.com/countserv/count/share?url=$url&amp;format=json");
  $json = json_decode($json_string, true);
  return intval( $json['count'] );
}
```
