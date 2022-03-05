---
layout: post
title: 原型和原型链
categories: JavaScript
description: JavaScript
keywords: JavaScript
---
 原型是方法特有的，常规对象如数组、对象等是没有的，而原型链是方法和常规对象都有的。而原型和原型链与继承又有什么关系呢？

## 表示方式
### 原型 `prototype`

### 原型链 `_proto_ ` 谷歌浏览器表示方式`[[prototype]]`

## 原型是函数`function`特有的，常规对象如数组、对象等是没有的，而原型链是方法和对象都有的

### 原型是函数`function`特有的
```javascript
function fn(){

}

fn.prototype.name = '小明‘
fn.prototype.fn2 = function(){
    console.log("1111")
}

``` 
1、为什么要在函数的原型上挂东西  
是为了继承，可以通过new的关键字来继承它的属性

### 常规对象或者数组中没有原型
```javascript
let obj = {}
let arr = []

obj.prototype.a = 6666  // Uncaught TypeError: Cannot set properties of undefined (setting 'a')
arr.prototype.a = 7777  //  Uncaught TypeError: Cannot set properties of undefined (setting 'a')
```

### 原型链是大家都有

```javascript
let obj = {}
console.log(obj)
/*
[[Prototype]]: Object
constructor: ƒ Object()
hasOwnProperty: ƒ hasOwnProperty()
isPrototypeOf: ƒ isPrototypeOf()
propertyIsEnumerable: ƒ propertyIsEnumerable()
toLocaleString: ƒ toLocaleString()
toString: ƒ toString()
valueOf: ƒ valueOf()
__defineGetter__: ƒ __defineGetter__()
__defineSetter__: ƒ __defineSetter__()
__lookupGetter__: ƒ __lookupGetter__()
__lookupSetter__: ƒ __lookupSetter__()
__proto__: (...)
get __proto__: ƒ __proto__()
set __proto__: ƒ __proto__()
*/

let fn = function (){

}
console.dir(fn)
/*
arguments: null
caller: null
length: 0
name: "fn"
prototype:
constructor: ƒ ()
[[Prototype]]: Object
[[FunctionLocation]]: VM406:4
[[Prototype]]: ƒ ()
[[Scopes]]: Scopes[2]
*/

```


## 原型链的继承关系和原型链的查找关系
### 原型链的继承关系
原型的属性和方法都是可以被调用的
### 原型链的查找规则
从当前实例属性去查找，如果找到了就返回，否则顺着原型链一层一层往上面找,直到找到null为止（原型链的定指向null），报错

```javascript

function Person(){

}

Person.prototype.name = 'xiaoming'
Person.prototype.age = 18
Person.prototype.getAge = function(){
    console.log(this.age)
}

// person1通过new关键字继承了Person的原生属性
// 实例
let person1 = new Person()  // 值得注意，当Person函数被new的时候才可以被叫做构造函数，之前不能称作构造函数

// 原型的属性和方法都是可以被调用的，原型链的继承关系
console.log(person1.name)   // xiaoming
person1.getAge()    // 18

// 之所以输出的是28而不是18，是因为就近原则，不是代码上的进，而是原型链上的近
person1.age = 28
console.log(person1.name)   // xiaoming
person1.getAge()    // 28
console.log(person1)
/*
age: 28
[[Prototype]]: Object
    age: 18
    getAge: ƒ ()
    name: "xiaoming"
    constructor: ƒ Person()
    [[Prototype]]: Object
*/

console.log(person1.dem) // undefind  自身（person1）没有，他爹（Person）也没有
console.log(person1.abc())  // Uncaught TypeError: person1.abc is not a function


// 如何判断自身的拥有的属性，而不是继承它爹（Person）的属性
// hasOwnProperty从何而来，person1自身是没有该属性，它爹也没有，而是它爹（Person)继承了对象所得
person1.demo = 'demo'
let item

for(item in person1){
    // 查找自身私有属性
    if(person1.hasOwnProperty(item)){
        console.log(item)   // age demo
    }
}

```
![原型链关系图](/images/posts/javascript/prototype.jpeg)
