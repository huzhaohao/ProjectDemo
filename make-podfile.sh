#!/bin/sh

####################
## 生成podfile脚本
####################

url=`pwd`

# 移除podfile 文件

targets=(
"ShenGangZhengQuan_Phone"
)

printItems=(
	"申港证券"
)

index=0
echo "${index} 创建 ${printItems[$index]}-----${targets[$index]} 的 podfile 文件"

optIndex=0
target=${targets[$optIndex]}
#添加common
cat ${url}/podfiles/podfile-common > Podfile

# 添加某个target的
echo "--------copy ${opt}文件到podfile文件中--------\n\n"
cat ${url}/podfiles/podfile-${target} >> Podfile

echo "-----------自动生成的 Podfile文件 --------------:"
cat podfile
echo "-----------自动生成的 Podfile文件完成------------\n\n\n"
echo "=================== podfile ===================="
echo "1: 执行 pod install --verbose --no-repo-update"
echo "2: 执行 pod install"
echo "3: 执行 pod update  --verbose --no-repo-update"
echo "4: 执行 pod update"
echo "0: 退出"
echo "请输入编号："
read optPod

if [ $optPod -eq 1 ]; then
	pod install --verbose --no-repo-update
elif [ $optPod -eq 2 ]; then
	pod install
elif [ $optPod -eq 3 ]; then
	pod update  --verbose --no-repo-update
elif [ $optPod -eq 4 ]; then
	pod update
else
	exit
fi












