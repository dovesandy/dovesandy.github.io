---
layout: post
title: 前端跨域问题的解决
categories: JavaScript
description: JavaScript
keywords: JavaScript
---

## 什么是跨域
- 前后端分离导致了跨域
- 当协议+域名+端口的其中之一不一样时候都会跨域（http://www.a.com）
- 协议：http（80端口） 和 https（443端口）

## 跨域问题的解决方式
1. Webpack proxy （打包后没有proxy）
2. jsonp 需要后端支持，协议只支持get
3. nginx 反向代理
4. cors（后端解决方式）推荐使用
5. Webpack plugin 插件方式
6. Websocket 是一个长链接，占用资源，影响性能

