#!/bin/sh

# システムを保存
rtcryo localhost -o env.rtsys

echo "Wait to quit the programs. "
read

# システムを復元
rtresurrect env.rtsys

# システム を 起動
rtstart env.rtsys

echo "Running ..."
read

#システム を 停止
rtstop env.rtsys

# システムの接続を削除
rtteardown env.rtsys
