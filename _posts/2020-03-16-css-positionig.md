---
layout: post
title: 在position属性中的绝对定位和相对定位的理解
categories: CSS
description: CSS
keywords: CSS
---


CSS position属性用于指定一个元素在文档中的定位方式。`top`，`right`，`bottom` 和 `left` 属性则决定了该元素的最终位置。

## 定位类型

- 定位元素（positioned element）是其计算后位置属性为 `relative`, `absolute`, `fixed` 或 `sticky` 的一个元素（换句话说，除static以外的任何东西）。
- 相对定位元素（relatively positioned element）是计算后位置属性为 `relative` 的元素。
- 绝对定位元素（absolutely positioned element）是计算后位置属性为 `absolute` 或 `fixed` 的元素。
- 粘性定位元素（stickily positioned element）是计算后位置属性为 `sticky` 的元素。

[MDN-Web开发技术-CSS（层叠样式表）-position](https://developer.mozilla.org/zh-CN/docs/Web/CSS/position)
