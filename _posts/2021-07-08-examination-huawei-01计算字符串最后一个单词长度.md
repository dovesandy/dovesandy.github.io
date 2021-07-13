---
layout: post
title: 计算字符串最后一个单词的长度
categories: Examintion
description: Examintion
keywords: Examintion
---

#### 牛客网-华为机试练习题 01 字符换最后一个单词的长度

##### 题目描述

计算字符串最后一个单词的长度，单词以空格隔开。 

##### 输入描述:

```
一行字符串，非空，长度小于5000。
```

##### 输出描述:

```
整数N，最后一个单词的长度。
```

示例1

输入

```
hello world
```

输出

```
5
```


### Java
```java
import java.util.*;

public class Main{
    public static void main (String [] args){
        Scanner sc = new Scanner(System.in);
        String str = sc.nextLine();
        String[] s = str.split(" ");
        int length = s[s.length-1].length();
        System.out.println(length);
    }
}
```

### JavaScript
```JavaScript
let arr = readline().trim().split(' ');
let len = arr[arr.length - 1].length;
console.log(len);

```