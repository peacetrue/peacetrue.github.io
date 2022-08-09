#!/bin/bash
# 统一升级 Gradle 的版本

path=${1}
echo "0.升级 Gradle 的版本"

if [ -z "$path" ]; then
  echo "路径为空，退出(1)"
  exit 1
fi

sed -i "" 's|gradle-7.0-bin.zip|gradle-7.4.2-bin.zip|g' `find "$path" -name "gradle-wrapper.properties"`

