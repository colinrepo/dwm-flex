# 编译和安装 dwm
使用顶层目录的install.sh脚本安装

# 使用说明
+ output目录下的内容是顶层目录下的install.sh脚本运行dwm-flexipatch目录下的flexipatch-finalizer.sh动态生成的
+ 不应当手动配置output下的任何配置，因为每次使用顶层目录的install.sh都会将output全部删除再重新生成
+ 每次新增或者删减插件时，应当修改dwm-flexipatch目录下的patches.h和config.h,之后再使用顶层目录下的install.sh脚本
生成output下的dwm

# 下载和更新 dwm-flexipatch
+ git clone https://github.com/bakkeby/dwm-flexipatch.git
+ 当前dwm-flexipatch下面的源码使用github.com/bakkeby/dwm-flexipatch.git下当前最新版本，原作者后续会更新，因此
若有必要，也可以从原作者的仓库拉取最新的代码覆盖当前目录下的代码
+ flexipatch-finalizer.sh，patches.h和config.h 一般不要覆盖，若原作者仓库的patches.def.h和config.def.h更新较大
则需要备份flexipatch-finalizer.sh，patches.h和config.h并重新生成，之后再手动合并
