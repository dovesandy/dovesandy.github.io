---
layout: post
title: .gitignore让git推送时候忽略不必要推送的文件
categories: Git
description: git的使用
keywords: .gitignore
---
在使用git时候，往往会忽略某些不必要推送的文件，如何如何配置呢？.gitignore又该如何使用呢?

## 1. 到项目的根目录下新建.gitignore文件
> Windows下可以先右键，启动Git Bash Here
```ruby
touch .gitignore
```

## 2. 编辑.gitignore文件

> 添加要忽略的文件

```javascript

target          //忽略这个target目录
angular.json    //忽略这个angular.json文件
log/*           //忽略log下的所有文件
css/*.css       //忽略css目录下的.css文件

```
> 比如我要忽略Gemfile.lock

```javascript
Gemfile.lock
```
> 执行命令查看是否已经忽略该文件
```javascript
git status
```


![](/images/posts/git/gitignore1.png)