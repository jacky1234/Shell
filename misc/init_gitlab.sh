#!/bin/bash
cd ..

rm -rf ujy-android
git clone -b version2.1 https://gitlab.xiaoheiban.cn/ujcloud/ujy-android.git

rm -rf CoreMediaSample
git clone https://gitlab.xiaoheiban.cn/android/CoreMediaSample.git

rm -rf Mars
git clone -b 4.6.1 http://139.196.171.122:8090/shared/Mars

rm -rf extras
mkdir extras
cd extras
git clone -b develop https://gitlab.xiaoheiban.cn/module_component/Statusbar.git
git clone -b develop https://gitlab.xiaoheiban.cn/module_component/RefreshLayout.git
git clone -b develop https://gitlab.xiaoheiban.cn/module_component/Commonlib.git
git clone -b develop https://gitlab.xiaoheiban.cn/module_component/Skinlib.git
git clone -b develop https://gitlab.xiaoheiban.cn/module_component/Permissionlib.git
git clone -b develop https://gitlab.xiaoheiban.cn/module_component/ImageLoaderlib.git
git clone -b develop https://gitlab.xiaoheiban.cn/module_component/BasicRes.git
git clone -b develop https://gitlab.xiaoheiban.cn/module_component/Fragmentation.git