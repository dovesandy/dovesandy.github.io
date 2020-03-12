---
layout: page
title: About
description: 打码改变世界
keywords: Sandy Lai, Sandy
comments: true
menu: 关于
permalink: /about/
---

This is Sandy。

仰慕「万物皆可弃」。

努力奔跑，定能逃离地球。

## 联系

{% for website in site.data.social %}
* {{ website.sitename }}：[@{{ website.name }}]({{ website.url }})
{% endfor %}

## Skill Keywords

{% for category in site.data.skills %}
### {{ category.name }}
<div class="btn-inline">
{% for keyword in category.keywords %}
<button class="btn btn-outline" type="button">{{ keyword }}</button>
{% endfor %}
</div>
{% endfor %}
