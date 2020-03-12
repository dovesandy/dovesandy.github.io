---
layout: post
title: 启动jekyll服务报错：Could not find gem 'github-pages'
categories: Git
description: start jekyll错误的解决
keywords: jekyll
---
在搭建自己的博客的时候，想在本地启动工程，
在ruby和gem包都安装好后，
尝试进行jekyll的安装和启动，执行bundle install时候遇到了Could not find gem 'github-pages'错误

## 1. 前期准备

> 安装ruby和gem
> 安装jekyll

```ruby
gem install jekyll
```

## 2. 在自己的github.io项目路径下启动jekyll

```ruby
jekyll server
```

## 3. 提示的错误信息

```ruby
/Users/sandy/.rvm/rubies/ruby-2.4.4/lib/ruby/site_ruby/2.4.0/bundler/resolver.rb:287:in `block in verify_gemfile_dependencies_are_found!': Could not find gem 'github-pages' in any of the gem sources listed in your Gemfile. (Bundler::GemNotFound)

```

![](/images/posts/git/jekyll1.png)

## 4. 解决办法

> 在工程路径下执行命令

```ruby
bundle install
```
> 再尝试启动

```ruby
jekyll1 server
```
![](/images/posts/git/jekyll1.png)
## 5. 分析
> 在执行bunle install时候可以执行两次，因为可能是网络问题造成的,Gemfile文件是用外国镜像的

```ruby
source 'https://rubygems.org'
gem 'github-pages', group: :jekyll_plugins
```

## 6. 参考链接

- <https://blog.csdn.net/u012954706/article/details/83309689>

