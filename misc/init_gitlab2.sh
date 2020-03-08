#!/bin/bash

echo "输入分支名，例如【master，develop】,默认为 develop 分支"
read branch

if [ -z "$branch" ]
then
	branch='develop'
fi

echo $branch

gitlab_array=(
	"https://gitlab.xiaoheiban.cn/module_component/Statusbar.git"
	"https://gitlab.xiaoheiban.cn/module_component/RefreshLayout.git"
	"https://gitlab.xiaoheiban.cn/module_component/Commonlib.git"
	"https://gitlab.xiaoheiban.cn/module_component/Skinlib.git"
	"https://gitlab.xiaoheiban.cn/module_component/Permissionlib.git"
	"https://gitlab.xiaoheiban.cn/module_component/ImageLoaderlib.git"
	"https://gitlab.xiaoheiban.cn/module_component/BasicRes.git"
	"https://gitlab.xiaoheiban.cn/module_component/Fragmentation.git"
)

for item in ${gitlab_array[@]}
do
	git clone -b $branch $item
done