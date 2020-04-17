#!/bin/bash
# 发布project demo

export RP_BASE_DIR=$(cd "$(dirname "$0")"; pwd)

echo "RP_BASE_DIR=$RP_BASE_DIR"

export TARGET_PROJECTS=(
	replugin-host-gradle
	replugin-host-library
)

__gradle_exec(){ if [[ -x gradlew ]];then ./gradlew ${@}; else gradle ${@}; fi; }

__rp_deploy_project(){
	[[ ! -d ${1} ]] && echo ">>> INVALID ${1}!!! <<<" && return
	# execute deploying
	echo ">>> ${1} <<<" && cd ${1} && __gradle_exec -p ${1} clean bintrayUpload
	# revert changed files
	git checkout ${1}
}

rp_revert_AppConstant(){
	git status -s | sed s/^...// | grep '/AppConstant.groovy' | git checkout ${f}
}

rp_deploy(){
	local current=`pwd` && cd ${RP_BASE_DIR}
	# revert AppConstant.groovy
	rp_revert_AppConstant
	# saving all changes: git stash save "saving stash for deploying!!!"
	# deploy
	for p in ${TARGET_PROJECTS}; 
		do 
			__rp_deploy_project ${RP_BASE_DIR}/${p}; 
		done
	# revert local changes: git revert --hard HEAD; git stash pop
	rp_revert_AppConstant
	# back
	cd ${current}
}


rp_deploy