---
layout: post
title: 谈一下你对MVC和MVVM原理的理解
categories: JavaScript
description: JavaScript
keywords: JavaScript
---

## 两者的理解
- 传统的 MVC 指的是,用户操作会请求服务端路由，路由会调用对应的控制器来处理,控制器会获取数据。将结果返回给前端,页面重新渲染
- MVVM :传统的前端会将数据手动渲染到页面上, MVVM 模式不需要用户收到操作 dom 元素,将数据绑定到 viewModel 层上，会自动将数据渲染到页面中，视图变化会通知 viewModel层 更新数据。ViewModel 就是我们 MVVM 模式中的桥梁.