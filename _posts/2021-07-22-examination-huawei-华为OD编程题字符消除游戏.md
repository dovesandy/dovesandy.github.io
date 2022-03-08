---
layout: post
title: 字符消除游戏
categories: Examintion
description: Examintion
keywords: Examintion
---

### 题目描述
```javascript
// 字符消除游戏,给定一个只包含大写字母的字符串S，消除过程是如下进行的： 
// 1)如果S包含长度为2的由相同字母组成的子串，那么这些子串会被消除，余下的子串拼成新的字符串。 
// 例如”ABCCBCCCAA”中”CC”,”CC”和”AA”会被同时消除，余下”AB”, “C”和”B”拼成新的字符串”ABBC”。 
// 2)上述消除会反复一轮一轮进行，直到新的字符串不包含相邻的相同字符为止。 例如”ABCCBCCCAA”经过一轮消除得到”ABBC”，再经过一轮消除得到”AC”
 
// 例如”ABCCBCCCAA”中”CC”,”CC”和”AA”会被同时消除，余下”AB”, “C”和”B”拼成新的字符串”ABBC”。 

var newStr = function(str){
  let newStr = str[0];
  for(let i =1; i<str.length;i++){
      // console.log(newStr,str[i])
      // AB B
      if(newStr[newStr.length-1]==str[i]){       
        newStr = newStr.substr(0,newStr.length-1);
      }else{
        newStr +=str[i];
      }
  }
  return newStr
}

console.log(newStr("ABCCBCCCAA"));
```