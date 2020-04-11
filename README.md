- [写在前面](#写在前面)
- [准备工作](#准备工作)
- [本地图片一键转markdown链接工具](#本地图片一键转markdown链接工具)
- [编辑markdown](#编辑markdown)
- [后续](#后续)
  
## 写在前面

写博客时用Github仓库做图床是一个不错的引用图片的方式，但是PicGo工具使用起来总感觉有一些不足：
* 我喜欢将图片按```年/月/博客名/.png```的方式整理，但是使用PicGo工具时则不能灵活上传到对应路径
* PicGo上传速度比较慢，而且必须等上传之后才能快速复制相应的链接用于markdown中
* 也不方便批量处理图片

因此配合一个自建脚本推荐一个写博客时markdown引用在线图片的方式，

## 准备工作

首先新建一个仓库做图床用，比如blog-figures，然后克隆到本地，某个博客需要图片时就将图片移动到```仓库名/年/月/博客名/```路径下,
在markdown文件中我们不急于处理，先写一个类似于image1，image2在文中标明图片的位置。等博客写完时，我们直接push到远程仓库，再在markdown处理这些图片。

## 本地图片一键转markdown链接工具

受[AssassinZF](https://github.com/AssassinZF/markdown-image-tool)的启发，本人新建了一个AppleScript如下，也可直接下载[get markdown image URL with one click](https://github.com/JohnJim0816/markdown-image-tool/blob/master/get%20markdown%20image%20URL%20with%20one%20click.scpt)这个脚本，根据你的用户名和用于做图床的仓库名更改第二、三行内容。

```AppleScript
global reponame
set username to "JohnJim0816"
set reponame to "blog-figures"

set baseurl to "https://raw.githubusercontent.com/" & username & "/" & reponame & "/master"

tell application "Finder"
	
	set itemList to the selection
	--	set path to my theSplit(itemList, "/")
	set filename to my theSplit(itemList as string, ":", "/")
	
	set sourceUrl to (baseurl & filename)
	
	set mdUrl to "![](" & sourceUrl & ")"
	-- copy to clipboard
	set the clipboard to mdUrl as string
	
	--display dialog sourceUrl
	(*
	display dialog "该图片的URL链接" default answer mdUrl buttons {"复制", "关闭"} default button 1 with title "提示" with icon note
	
	if button returned of result = "复制" then
		--复制到剪切板
		set the clipboard to (text returned of result) as string
	end if
	*)
	
end tell

on theSplit(theString, theDelimiter, replace)
	-- save delimiters to restore old settings
	set oldDelimiters to AppleScript's text item delimiters
	-- set delimiters to delimiter to be used
	set AppleScript's text item delimiters to theDelimiter
	-- create the array
	set theArray to every text item of theString
	-- restore the old setting
	set AppleScript's text item delimiters to oldDelimiters
	-- return the result	
	set len to (count theArray)
	set i to 0
	-- the first tmppath is the file name
	set tmppath to item len of theArray
	set fullpath to ""
	repeat until tmppath = reponame
		set fullpath to replace & tmppath & fullpath
		set i to i + 1
		set tmppath to item (len - i) of theArray
	end repeat
	return fullpath
	
end theSplit
```
然后打开mac的 ```自动操作```应用，
![fig1](https://raw.githubusercontent.com/JohnJim0816/markdown-image-tool/master/figs/1.png)
新建一个快速操作，
![fig2](https://raw.githubusercontent.com/JohnJim0816/markdown-image-tool/master/figs/2.png)
找到```运行AppleScript```选项双击，然后将以上自建的脚本复制到右边保存(比如命名为convert img to md URL)即可，
![fig3](https://raw.githubusercontent.com/JohnJim0816/markdown-image-tool/master/figs/3.png)

## 编辑markdown

脚本建立完毕之后，选中本地图床github仓库下对应的图片，右键-快速操作-convert img to md URL，然后找到markdown开始标记的第一张图片位置image1，选中然后```CMD+V```就完事啦。如下：


![fig4](https://raw.githubusercontent.com/JohnJim0816/markdown-image-tool/master/figs/4.png)


```markdown
![](https://raw.githubusercontent.com/JohnJim0816/blog-figures/master/2020/04/我的Hexo-Github博客搭建笔记/1.png)
```

## 后续


鉴于目前需要在访达和VSCode(我是用VSCode进行git操作的)之间切换也比较麻烦，考虑未来做一个比如VSCode插件来实现上述脚本的效果，这样对系统也有兼容性。

