---
layout: post
title: 字节跳动前端面试题（一）
categories: Examintion
description: Examintion
keywords: Examintion
---



### 问题1：jQuery与Vue的区别是什么？
JQuery和Vue的主要区别是JQuery主要是通过选择器来选取DOM，对其进行赋值，取值，事件绑定等操作，数据和页面是混合在一起的；Vue则是通过Vue对象将数据和视图完全分割开来，对数据进行操作，不再需要引用相应的DOM对象，实现了MVVM。

### 问题2：javascript数据基本类型有哪些？
1. null
2. undefind
3. string
4. boolean
5. 0bject
6. number
7. symbol
8. bigInt

### 问题3：箭头函数与function函数的区别

1、function函数与箭头函数的定义写法不同
```javascript
function test(a,b){
    console.log(a,b)
}

var test = (a,b) => {
    console.log(a,b)
}
```
2、this的指向不同  
使用function定义的函数，this的指向随着调用环境的变化而变化的，而箭头函数中的this指向是固定不变的，一直指向的是定义函数的环境。

```javascript
function foo(){
    console.log(this)
}

var obj = { aa: foo}
foo() // Window

obj.aa() // obj {aa: foo}

var foo = () => {
    console.log(this)
}

var obj = { aa: foo }
foo() // Window

obj.aa() // Window
```
3、构造函数

```javascript
// 使用function方法定艾构造函数
function Person(name, age){
    this.name = name;
    this.age - age;
}

var lenhart = new Person (lenhart, 25);
console.log(lenhart); //{name:"lenhart', age:25}
// 尝试使用箭头函数
var Person = (name, age) =>{
    this.name = name;
    this. age
}
var lenhart = new Person('lenhart', 25); //Uncaught TypeError: Person is not a constructor
```

4、变量的提升  
由于js的内存机制，function的级别最高，而用箭头函数定义函数的时候，需要var(let const定义的时候更不必说)关键词，而var所定义的变量不能得到变量提升，故箭头函数一定要定义于调用之前！

### 问题4：new一个对象过程发生了什么？

1、创建一个新对象，如：var person = {};  
2、新对象的_proto_属性指向构造函数的原型对象。  
3、将构造函数的作用域赋值给新对象。（也所以this对象指向新对象）  
4、执行构造函数内部的代码，将属性添加给person中的this对象。  
5、返回新对象person。
### 问题5：类和构造函数的区别？如何编写代码实现构造函数不用new关键字会报错？

### 问题6：函数传参数是按值还是引用?数据类型或者对象类型都一样吗？
### 问题7：css 水平垂直居中方法

```html
<div>

</div>
```


