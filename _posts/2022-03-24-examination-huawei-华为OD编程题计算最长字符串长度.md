---
layout: post
title: 计算最长字符串长度
categories: Examintion
description: Examintion
keywords: Examintion
---

```js
    // 获取最长数字字符串长度，当他们相差大于1的时候为新一个字符串
    // 134 6 4 7877789
    let aStr = "15"
    function getLongStr(str){
        let count = 0
        let strCount = 0
        if(str.length<2)  {
            return str.length
        }
        let strLength = str.length
        for(let x=0; x < strLength-1; x++) {
           let a = Number(str[x])
           let b = Number(str[x+1])
           let c = a > b ? a - b : b - a
            strCount += 1
            count = count > strCount ? count : strCount
           if(c > 1){
            strCount = 0
           }
        }
        return count
    }
    console.log(getLongStr(aStr))
```