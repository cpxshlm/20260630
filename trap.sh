#!/bin/bash
# 初始化起始数字
num=1
# 定义目标文件
file="zabbix_traps.tmp"

# 输出启动提示
echo "脚本启动成功！开始每秒写入数字到 $file"
echo "按 Ctrl+C 停止脚本"

# 无限循环写入
while true
do
    # 追加写入当前数字，单独一行
    echo $num >> $file
    # 数字自增
    ((num++))
    # 暂停1秒
    sleep 1
done
