#!/bin/bash
# 清除分散的配置

# 集中配置(.idea) vs 分散配置(*.iws,*.ipr,*.iml)
# 如果项目当前采用分散配置，删除这些配置文件后，重新打开项目，自动使用集中配置

path=${1}
echo "0.清除路径[$path]下的 IntelliJ IDEA 配置"

if [ -z "$path" ]; then
  echo "路径为空，退出(1)"
  exit 1
fi

find "$path" -name "*.iml" -o -name "*.ipr" -o -name "*.iws" | xargs rm -rf
open -a "IntelliJ IDEA" "$path"
