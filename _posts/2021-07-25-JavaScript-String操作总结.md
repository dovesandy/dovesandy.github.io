---
layout: post
title: String操作总结
categories: JavaScript
description: JavaScript
keywords: JavaScript
---

### 使用方括号加数字索引来访问字符串(类型于数组)
    
```javascript
    console.log(str[1]);        // e 
```

### charAt()和charCodeAt()

charAt方法和charCodeAt方法都接收一个参数，基于0的字符位置 
charAt方法是以单字符字符串的形式返回给定位置的那个字符 
charCodeAt方法获取到的不是字符而是字符编码 

```javascript
var str="hello world"; 
console.log(str.charAt(1));     // e 
console.log(str.charCodeAt(1));     // 101 
```

### concat() 不改变源字符串的值



```javascript
var str="hello "; 
var res=str.concat("world"); 
console.log(res);       // hello world 
console.log(str);       // hello  这说明原来字符串的值没有改变 
var res1=str.concat("nihao","!"); 
console.log(res1);      // hello nihao!  说明concat方法可以接收任意多个参数 
``` 

### + 和 `${}` 字符串拼接

```javascript
var str="hello "; 
console.log(str + "world");       // hello world 
console.log(`${str}world`);       // hello world 
console.log(str);       // hello  这说明原来字符串的值没有改变 
```

### slice方法、substring方法、substr方法 切割字符串

slice方法：第一个参数指定子字符串开始位置，第二个参数表示子字符串最后一个字符后面的位置 
substring方法：第一个参数指定子字符串开始位置，第二个参数表示子字符串最后一个字符后面的位置 
substr方法：第一个参数指定子字符串开始位置，第二个参数表示返回的字符个数 
这三个方法都会返回被操作字符串的一个子字符串，都接收一或两个参数 
如果没有给这些方法传递第二个参数，则将字符串的长度作为结束位置。这些方法也不会修改字符串本身，只是返回一个基本类型的字符串值 

```javascript
var str="hello world"; 
console.log(str.slice(3));      // lo world 
console.log(str.substring(3));      //lo world 
console.log(str.substr(3));     // lo world 
console.log(str.slice(3,7));        // lo w  7表示子字符串最后一个字符后面的位置  简单理解就是包含头不包含尾 
console.log(str.substring(3,7));        //lo w 
console.log(str.substr(3,7));       // lo worl 7表示返回7个字符 

console.log(str.slice(3,-4));       // lo w  -4+11=7表示子字符串最后一个字符后面的位置  简单理解就是包含头不包含尾 
console.log(str.substring(3,-4));       // hel  会转换为console.log(str.substring(3,0)); 

// 此外由于这个方法会将较小数作为开始位置，较大数作为结束位置，所以相当于调用console.log(str.substring(0,3)); 
console.log(str.substr(3,-4));      // ""空字符串 
console.log(str.substring(3,0));    // 
```

### 字符串位置方法
indexOf方法和lastIndexOf方法都是从一个字符串中搜索给定的子字符串，然后返回子字符串的位置，如果没有找到，则返回-1 
indexOf方法是从字符串的开头向后搜索子字符串，lastIndexOf方法正好相反 
这两个方法都可以接收两个参数：要查找的子字符串和查找的位置 

```javascript
var str="hello world"; 
console.log(str.indexOf("o"));      // 4 
console.log(str.lastIndexOf("o"));      // 7 
console.log(str.indexOf("o",6));        // 7 
console.log(str.lastIndexOf("o",6));        // 4 
```

### trim方法用来删除字符串前后的空格

```javascript
var str="   hello world   "; 
console.log('('+str.trim()+')');        // (hello world) 
console.log('('+str+')');       // (   hello world   ) 
```

### toUpperCase()和toLowerCase()大小写转换

```javascript
var str = "HELLO world"; 
console.log(str.toLowerCase());     // hello world 
console.log(str.toUpperCase());     // HELLO WORLD 
```
### 字符串模式匹配

match方法：只接受一个参数，由字符串或RegExp对象指定的一个正则表达式 
search方法：只接受一个参数，由字符串或RegExp对象指定的一个正则表达式 
search方法返回字符串中第一个匹配项的索引，如果没有匹配项，返回-1 

```javascript
var str = "cat,bat,sat,fat"; 
var pattern = /.at/; 
var matches = str.match(pattern); 
console.log(matches.index);       // 0 
console.log(matches[0]);      // cat 
console.log(matches[1]);      // undefined
console.log(pattern.lastIndex);       // 0 
// lastIndex表示开始搜索下一个匹配项的字符位置，从0算起 

var pos = str.search(/at/); 
console.log(pos);     //1 1表示at字符串在原来字符串中第一次出现的位置 
```

### replace() 字符串替换

```javascript
var str="cat,bat,sat,fat"; 
var res=str.replace("at","one");//第一个参数是字符串，所以只会替换第一个子字符串 
console.log(res);//cone,bat,sat,fat 

var res1=str.replace(/at/g,"one");//第一个参数是正则表达式，所以会替换所有的子字符串 
console.log(res1);//cone,bone,sone,fone 
```

### split() 字符串分割成数组

split方法是基于指定的字符，将字符串分割成字符串数组 
当指定的字符为空字符串时，将会分隔整个字符串 

```javascript
var str="red,blue,green,yellow"; 
console.log(str.split(","));        //["red", "blue", "green", "yellow"] 
console.log(str.split(",",2));      //["red", "blue"]  第二个参数用来限制数组大小 
console.log(str.split(/[^\,]+/));       // ["", ",", ",", ",", ""] 
// 第一项和最后一项为空字符串是因为正则表达式指定的分隔符出现在了子字符串的开头，即"red"和"yellow" 
// [^...] 不在方括号内的任意字符  只要不是逗号都是分隔符 
```

### localeCompare方法 比较两个字符串
这个方法用于比较两个字符串 
1.如果字符串在字母表中应该排在字符串参数之前，则返回一个负数 
1.如果字符串等于字符串参数，则返回0 
1.如果字符串在字母表中应该排在字符串参数之后，则返回一个正数 

```javascript
var str="yellow"; 
console.log(str.localeCompare("brick"));//1 
console.log(str.localeCompare("yellow"));//0 
console.log(str.localeCompare("zoo"));//-1 
```



### fromCharCode方法

```javascript
/* 
fromCharCode方法是接收一或多个字符编码，然后将其转换为字符串 
fromCharCode方法是String构造函数的一个静态方法 
    */ 
console.log(String.fromCharCode(104,101,108,108,111));//hello 
```


### 找到匹配字符串所在的各个位置

```javascript
/*找到匹配字符串所在的各个位置*/ 
var str="asadajhjkadaaasdasdasdasd"; 
var position=[]; 
var pos=str.indexOf("d"); 
while(pos>-1){ 
    position.push(pos); 
    pos=str.indexOf("d",pos+1); 
} 
console.log(position);//[3, 10, 15, 18, 21, 24]
```


### 字符串去重

```javascript
//String.split() 执行的操作与 Array.join 执行的操作是相反的 
//split() 方法用于把一个字符串分割成字符串数组。 
//join方法用于将字符串数组连接成一个字符串 
//如果把空字符串 ("") 用作 separator，那么 stringObject 中的每个字符之间都会被分割。 
var str="aahhgggsssjjj";//这里字符串没有可以分隔的字符，所以需要使用空字符串作为分隔符 
function unique(msg){ 
    var res=[]; 
    var arr=msg.split(""); 
    //console.log(arr); 
    for(var i=0;i<arr.length;i++){ 
    if(res.indexOf(arr[i])==-1){ 
        res.push(arr[i]); 
    } 
    } 
    return res.join(""); 
} 
console.log(unique(str));//ahgsj
```

### 判断字符串中字符出现的次数

```javascript
  /* 
  1.先实现字符串去重 
  2.然后对去重后的数组用for循环操作，分别与原始数组中各个值进行比较，如果相等则count++,循环结束将count保存在sum数组中，然后将count重置为0 
  3.这样一来去重后的数组中的元素在原数组中出现的次数与sum数组中的元素是一一对应的 
   */ 
var str="aacccbbeeeddd"; 
var sum=[]; 
var res=[]; 
var count=0; 
var arr=str.split(""); 
for(var i=0;i<arr.length;i++){ 
    if(res.indexOf(arr[i])==-1){ 
    res.push(arr[i]); 
    } 
} 
for(var i=0;i<res.length;i++){ 
    for(var j=0;j<arr.length;j++){ 
    if(arr[j]==res[i]){ 
        count++; 
    } 
    } 
    sum.push(count); 
    count=0; 
} 
console.log(res);//["a", "c", "b", "e", "d"] 
for(var i=0;i<res.length;i++){ 
    var str=(sum[i]%2==0)?"偶数":"奇数"; 
    console.log(res[i]+"出现了"+sum[i]+"次"); 
    console.log(res[i]+"出现了"+str+"次"); 
} 
```

### 阿里面试-字符串操作

```javascript
var str = "www.taobao.com"; 
var res = str.split("").reverse().join("").replace('oat',''); 
console.log(res);//moc.oab.www 
```

出自：https://www.jb51.net/article/97915.htm