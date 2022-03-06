---
layout: post
title: JS的防抖和节流
categories: JavaScript
description: JavaScript
keywords: JavaScript
---

## 防抖
固定的时间内，事件只允许发生一次，将多次操作变成一次  
应用于输入框校验等
```html
<!DOCTYPT html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>防抖</title>
</head>
<body>
    <h2>防抖</h2>
    <input placeholder="请输入电话" />
    <script>
        let telInput = document.querySelector('input')
        // telInput.addEventListener('input',(e)=>{
        //     console.log("发起请求")
        // })
        telInput.addEventListener('input', antiShake(demo,2000))


        // 防抖封装
        function antiShake(fn, wait){
            let timeOut = null
            return args => {
                if(timeOut) clearTimeout(timeOut)
                timeOut = setTimeout(fn, wait)
            }
        }

        function demo(){
            console.log("发起请求!")
        }
    </script>
</body>
<html>
```

## 节流
一定时间内只调用一次函数  
应用场景：1、提交表单 2、高频监听事件
```html
<!DOCTYPT html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>节流</title>
</head>
<style>
    .box{
        background-color: green;
        width: 200px;
        height: 200px;
    }
</style>
<body>
<div class="box"></div>
<script>
    let box = document.querySelector(".box")
    // box.addEventListener("touchmove",(e) => {
    //     console.log("发起请求！")
    // })
    // 移动端下的滑动操作
    box.addEventListener("touchmove",throttle(demo, 2000))
    // 利用延时或者时间戳
    function throttle(event, time){
        let timer = null
        return function() {
            if(!timer) {
                timer = setTimeout(() =>{
                    event()
                    timer = null
                }, time)
            }
        }
    }

    function demo(){
        console.log("发送请求！")
    }

    // 利用时间戳

</script>
</body>
<html>
```