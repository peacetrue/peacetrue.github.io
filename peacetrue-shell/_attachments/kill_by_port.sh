#!/bin/bash

port=${1-8761}
echo "0.杀掉端口[$port]对应的进程"

result=$(lsof -i:"$port" -sTCP:LISTEN) || exit
echo "1.根据端口查询进程: $result"

array=($result)
pid=${array[10]}
echo "2.根据进程查询结果取得进程号:$pid"

if [ -n "$pid" ]; then
  echo "3.杀掉进程$pid"
  kill -9 $pid
fi
