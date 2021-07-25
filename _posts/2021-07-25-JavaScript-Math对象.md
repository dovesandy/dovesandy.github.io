---
layout: post
title: Math对象
categories: JavaScript
description: JavaScript
keywords: JavaScript
---

#### Math.round() 四舍五入

```javascript

Math.round(4.7);   // 5
Math.round(4.5);   // 5
Math.round(4.1);   // 4

```

### Math.floor() 返回小于等于x的最大整数(向下舍入)

```javasript

Math.floor(1.6);        // 1

```

### Math.ceil() 返回大于等于x的最大整数(向上舍入)

```javasript

Math.ceil(1.6);        // 2

```


### Math.random() 返回一个介于0和1之间的随机数

```javascript

Math.random();      // 0.5571757175975985795875

```

### Math.floor()和Math.random() 返回一个介于0和11之间的随机数

```javascript

Math.floor(Math.random()*11);       // 7

```

### Math.min()和Math.max() 求最小最大值

```javascript

Math.min(2,4,3,6,3,8,0,1,3);              // 最小值 0
Math.max(4,7,8,3,1,9,6,0,3,2);         // 最大值 9

```

## 其他

```javascript

Math.abs(num)       // 返回num的绝对值

Math.exp(num)       // 返回Math.E的num次幂

Math.log(num)       // 返回num的自然对数

Math.pow(num,power)    // 返回num的power次幂

Math.sqrt(num)      // 返回num的平方根

Math.acos(x)        // 返回x的反余弦值

Math.asin(x)        // 返回x的反正弦值

Math.atan(x)        // 返回x的反正切值

Math.atan2(y,x)     // 返回y/x的反正切值

Math.cos(x)     // 返回x的余弦值

Math.sin(x)     // 返回x的正弦值

Math.tan(x)     // 返回x的正切值

```
