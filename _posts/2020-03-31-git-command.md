---
layout: post
title: Git的常用命令记录
categories: Git
description: git的使用
keywords: Git Command
---
记录一些常用的Git 常用的命令

## 1. 初始化本地仓库 
> 想把当前文件夹作为git仓库时使用
```shell
git init
```

## 2. 在文件中新建README.md文件推送到本地仓库

```shell
git add README.md
```
## 3. 在GitHub上初始化一个工程时候，分为两种情况

```shell
# 新建的项目
…or create a new repository on the command line
echo "# IU" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:dovesandy/IU.git
git push -u origin master

# 合并的项目            
…or push an existing repository from the command line
git remote add origin git@github.com:dovesandy/IU.git
git push -u origin master
```
## 4. 查看分支
```shell
# 查看本地分支，带*的为当前分支
git branch

# 查看远程分支
git branch -r

# 查看所有分支
git branch -a

```

## 6. 切换到master分支
```shell
git checkout master
```

## 7. 合并devolopment分支
```shell
# 先切换回要并入的分支
git checkout master

# 从development合入到master分支
git merge development
```
## 8. 撤消上一次commit的内容(该操作会彻底回退到某个版本，本地的源码也会变为上一个版本的内容)
```shell
# 先查看日志版本信息
git log

# 退出查看日志信息
q

# 查看某次推送的详细信息
git show 8d8e5ccf24cf6836ab780aa3860270c3876e825

# 退回到8d8e5ccf24cf6836ab780aa3860270c3876e825a版本
git reset --hard 8d8e5ccf24cf6836ab780aa3860270c3876e825a

```

## 9. 推送到本地仓库

```shell

# 推动到本地
git add .

# 添加注释
git commit -m 注释换行

# git commit -m 注释可以通过单引号来换行，比如：
git commit -m '
> 1.aaaaa
> 2.bbbb
> '

# 通过git commit --amend 命令可以查看到刚刚的log信息为

1.aaaaa
2.bbbb

# 推送到远程仓库
git push
```





