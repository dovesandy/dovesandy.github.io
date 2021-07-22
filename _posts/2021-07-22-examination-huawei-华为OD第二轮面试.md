---
layout: post
title: 华为OD第二轮面试编程题
categories: Examintion
description: Examintion
keywords: Examintion
---

#### 华为OD第二轮面试编程题

#### 题目描述

请从字符串中找出一个最长的不包含重复字符的子字符串，计算该最长子字符串的长度。假设字符串中只包含从’a’到’z’的字符。
例如，在字符串中”arabcacfr”，最长非重复子字符串为”acfr”，长度为4。

### Java
```javascript
function myFunction(str) {
    let count = 0;
    for(let i=0; i < str.length; i++){
        let newStr = [];
        for(let j =i; j<str.length; j++ ){
            if(!newStr.includes(str[j])){
                newStr.push(str[j]); 
            }else{
                if(count<newStr.length){
                    count = newStr.length;
                }
                break;
            }
        }
    }
    return count
}

newStrLength = myFunction("bbbbb");
console.log(newStrLength);
```
