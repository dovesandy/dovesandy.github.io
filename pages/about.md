---
layout: page
title: About
description: 无巧不成书
keywords: Sandy Lai, Sandy
comments: true
menu: 关于
permalink: /about/
---

「万物皆可抛」

过去心不可得，
现在心不可得，
未来心不可得。

「牛顿的万有引力定律」

只要我跑快，
定能逃离地球。

<iframe
  frameborder="no"
  border="0"
  marginwidth="0"
  marginheight="0"
  width="330"
  height="86"
  src="//music.163.com/outchain/player?type=2&id=28625050&auto=0&height=66"
></iframe>

## Skill Keywords

{% for category in site.data.skills %}
### {{ category.name }}
<div class="btn-inline">
{% for keyword in category.keywords %}
<button class="btn btn-outline" type="button">{{ keyword }}</button>
{% endfor %}
</div>
{% endfor %}


## 联系

{% for website in site.data.social %}
* {{ website.sitename }}：[@{{ website.name }}]({{ website.url }})
{% endfor %}
