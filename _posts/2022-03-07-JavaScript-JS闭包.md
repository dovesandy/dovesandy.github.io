---
layout: post
title: 深度解析JS的闭包
categories: JavaScript
description: JavaScript
keywords: JavaScript
---

## 什么是闭包？
方法里返回一个方法
```javascript
 function fn (){
     let a = 1
     return function(){
         return a
     }
 }
```

## 闭包存在意义？
1. 延长变量的生命周期
2. 创建私有环境



## 为什么减少定义全部变量
1. 全局变量会污染局部变量
2. 全局变量不会被回收

### 变量的作用域
```javascript
let a = 'a'
function fn1(){
    let b = 1
    console.log(a)
}


fn1() // a

console.log(b) // Uncaught ReferenceError: b is not defined

// 打开调试查看变量位置
/*
Local // 局域的
    this: Window
    b: undefined
Script // 全局的
    a: "a"
    Window
Global // JS自动注入的属性
*/
```
![变量的作用域](/images/posts/javascript/闭包1.png "变量的作用域")

### 为什么可以访问到a不能访问到b
1. 因为a是全局变量保存在全局作用域属性Script中，而b是局部变量保存在全局作用域属性Local中 局部的
2. JS的执行机制，JS运行过程生成临时的变量对象AO（active object），会把方法和局部变量存在AO中，执行完后，会回收AO

### 作用域链
作用域链查找规则，一级一级往上找，找到就输出，类似于原型链查找规则（就近原则）
```javascript
let name = '小明'
function fn2(){
    let name  = '小白'
    function fn3(){
        let name = '小红'
        console.log(name)
    }
    fn3()
}
fn2()   // 小红
```
## 闭包沟通内外部的桥梁
### 延长变量的生命周期
### 注意问题，慎用闭包，闭包的变量无法被回收
```javascript
let a = '小明'
function outer(){
    let a1 = 111
    let a2 = 222
    return function inner(){
        return a1
    }
}
function fn5(){
    let getInnerData = outer()
    console.dir(getInnerData)
    console.log(getInnerData)
}
fn5() // 111
// Closure 闭包
```
![闭包的变量图](/images/posts/javascript/闭包2.png "闭包的变量图")


## 闭包可以创造一个私有作用域
### Vue的`data()`为什么是一个函数？
```javascript
data(){
    return {

    }
}
```
1. 其实它是一个闭包的设计
2. 因为Vue是一个单页应用，有很多对应的组建，每个组件中都定义了一个data，闭包给每个组件都建立了一个私有域的空间，这样保证了A组件data中定义的a与B组件定义的a不会相互影响的，所以保证了各个组件当中都会拥有一个私有域
3. 如果不用闭包，用一个普通的Object来定义，就回相互影响

## 闭包的计数器问题
- 虽然都是由同一个闭包创建，但是都有自己独立的词法作用域  
- 面向对象编程，数据的隐藏和封装

```javascript
let makeCounter = function(){
    let num = 0
    function changeBy(val){
        num += val
    }
    return {
        add: function(){
            changeBy(1)
        },
        reduce: function(){
            changeBy(-1)
        },
        value: function(){
            return num
        }
    }
}

let counter1 = makeCounter()
let counter2 = makeCounter()

counter1.add()
counter1.add()  // 2
counter2.add()

// 为什么counter2.value不是3
console.log(counter1.value())   // 2
console.log(counter2.value())   // 1

```
