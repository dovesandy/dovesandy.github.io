---
layout: post
title: 字符消除游戏
categories: Examintion
description: Examintion
keywords: Examintion
---

```js

// 16进制转2进制

var changefun = function(args) {
    let twoStr = ''
    let changeObj = {
        '0': '0000',
        '1': '0001',
        '2': '0010',
        '3': '0011',
        '4': '0100',
        '5': '0101',
        '6': '0110',
        '7': '0111',
        '8': '1000',
        '9': '1001',
        'a': '1010',
        'b': '1011',
        'c': '1100',
        'd': '1101',
        'e': '1110',
        'f': '1111'
    }
    let str = args.replace('0x','')
    for(let i =0;i<str.length;i++){
        twoStr +=changeObj[str[i]]
    }
    
    console.log(twoStr.replace(/\b(0+)/gi,""))
}

changefun("0x1e0c")
```