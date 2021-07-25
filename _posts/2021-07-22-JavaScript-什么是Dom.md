---
layout: post
title: 什么是Dom
categories: JavaScript
description: JavaScript
keywords: JavaScript
---

#### DOM 是 Document Object Model(文档对象模型)的缩写。下面是MDN对DOM的解释：

文档对象模型 (DOM) 是HTML和XML文档的编程接口。它提供了对文档的结构化的表述，并定义了一种方式可以使从程序中对该结构进行访问，从而改变文档的结构，样式和内容。
DOM 将文档解析为一个由节点和对象（包含属性和方法的对象）组成的结构集合。简言之，它会将web页面和脚本或程序语言连接起来。

### 在浏览器渲染机制中，浏览器解析HTML标签，构建DOM树，如下图：

![](/images/posts/javascript/dom-tree.jpg)


每个元素都可与看做一个对象，每个对象都叫做一个节点(node)
### DOM有什么用呢？
就是为了操作HTML中的元素，使得网页被下载到浏览器后改变网页内容成为可能


出自：https://www.jianshu.com/p/18461e5f6407