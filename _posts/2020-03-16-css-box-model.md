---
layout: post
title: CSS中对盒子模型的理解
categories: CSS
description: CSS
keywords: CSS
---

盒子模型，对于不同浏览器是有差异的，理解这些差异对于适配浏览器有很大的帮助。
盒子模型，也是面试的时候常问的问题。

## CSS盒子模型概念
CSS盒子模型 又称框模型 (Box Model) ，由内而外包含了元素内容（content）、内边距（padding）、边框（border）、外边距（margin）4个要素。如图：
![盒子模型](/images/posts/css/box-model.png "盒子模型")
图中最内部的框是元素的实际内容，也就是元素框，紧挨着元素框外部的是内边距padding，其次是边框（border），然后最外层是外边距（margin），整个构成了框模型。通常我们设置的背景显示区域，就是内容、内边距、边框这一块范围。而外边距margin是透明的，不会遮挡周边的其他元素。
## 盒子模型的宽度和高度计算
元素框的总宽度 = 元素（element）的width + padding的左边距和右边距的值 + margin的左边距和右边距的值 + border的左右宽度  
元素框的总高度 = 元素（element）的height + padding的上下边距的值 + margin的上下边距的值 ＋ border的上下宽度

[转载自：千与千寻*的盒子模型的理解](https://www.cnblogs.com/clearsky/p/5696286.html)
