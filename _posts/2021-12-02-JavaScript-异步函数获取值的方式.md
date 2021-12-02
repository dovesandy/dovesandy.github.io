---
layout: post
title: 异步函数获取值的方式
categories: JavaScript
description: JavaScript
keywords: JavaScript
---
 
### 同步函数获取值的方式

```javascript

getData() {
    const value = "这是同步函数获取值的方式"
    return value
}
const result = getData()
console.log(result) // 这是同步函数获取值的方式

```

### 异步函数获取值的方式

```javascript

getData(){
    // 1
    // 2
    setTimeOut(() => {
        // 4
        const value = "这是异步函数获取值的方式"
        return value
    }, 1000)

    // 3
}

var resule = getData()
console.log(result) // undefine

```


```javascript

getData(callBack){
    const value = "这是异步函数获取值的方式"
    setTimeOut(() => {
        callBack(value)
    }, 1000)
}

getData((result) => {
    console.log(result) // 这是异步函数获取值的方式
})

```




```javascript

getData(){
    return Promise((resolve, reject) => {
        setTimeOut(() => {
            const value = "这是异步函数获取值的方式"
            resolve(value)
        }, 1000)
    })
}

var promiseData = getData()
promiseData.then((data) => {
    console.log(data) // 这是异步函数获取值的方式
})

```