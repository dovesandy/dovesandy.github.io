---
layout: post
title: 用JS文件批量下载文件
categories: JavaScript
description: JavaScript
keywords: JavaScript
---

```js
const downFileArray = document.getElementsByClassName("class-name")
let index = 0
let timer = setInterval(()=>{
    if(index < downFileArray.length){
        let link = downFileArray[index]
        link.click()
        link +=1
    }else{
        clearInterval(timer)
    }

},2000)
```