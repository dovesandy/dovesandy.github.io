---
layout: post
title: promise函数
categories: JavaScript
description: JavaScript
keywords: JavaScript
---
Javascript执行环境是单线程的，也就是说JS环境中负责解释和执行的线程只有一个，一次只能完成一项任务，这个任务执行完后才能执行下一个，因此Javascript中存在大量的异步操作和回调函数。

Promise函数是异步编程的一个解决方案，相对传统的解决方案，他更合理和强大。Promise的本意是“承诺”、“许诺”的意思。承诺在未来会执行某个操作的函数，就是Promise函数。

#### Promise 对象
```
Promise 是异步编程的一种解决方案。
Promise 对象代表一个异步操作，有三种状态：pending（进行中）、fulfilled（已成功）和 rejected（已失败）。
Promise 对象的状态改变，只有两种可能：从 pending 变为 fulfilled 和从 pending 变为rejected。只要这两种情况发生，状态就凝固了，不会再变了，会一直保持这个结果，这时
就称为 resolved（已定型)

```

```javascript
const someAsyncThing = function(flag) {
    return new Promise(function(resolve, reject) {
    if(flag){
        resolve('ok');
    }else{
        reject('error')
    }
 });
```




### Promise 的队列与 setTimeout 的队列有何关联 ？

```javascript
setTimeout(function(){ console.log(4) }, 0);
new Promise(function(resolve){
    console.log(1)
    for( var i = 0 ; i < 10000 ; i++ ){
        i == 9999 && resolve()
    }
    console.log(2)
}).then(function(){
    console.log(5)
});
console.log(3);
```
```
为什么结果是：1, 2, 3, 5, 4；而不是：1, 2, 3, 4, 5 ？
js 里面有宏任务（macrotask）和微任务（microtask）。
因为 setTimeout 是属于 macrotask 的，而整个 script 也是属于
一个 macrotask，promise.then 回调是 microtask，执行过程大概
如下：
1、由于整个 script 也属于一个 macrotask，由于会先执行 macrotask
中的第一个任务，再加上 promise 构造函数因为是同步的，所以会
先打印出 1 和 2；
2、然后继续同步执行末尾的 console.log(3) 打印出 3；
3、此时 setTimeout 被推进到 macrotask 队列中， promise.then 回
调被推进到 microtask 队列中；
3、由于在第一步中已经执行完了第一个 macrotask ，所以接下来会顺
序执行所有的 microtask，也就是 promise.then 的回调函数，从而
打印出 5；
4、microtask 队列中的任务已经执行完毕，继续执行剩下的 macrotask
队列中的任务，也就是 setTimeout，所以打印出 4。

```

参考连接：
https://blog.csdn.net/tuolingss/article/details/104374741
