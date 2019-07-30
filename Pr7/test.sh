#!/bin/sh

# 位置の移動
WORKDIR=/localhost/`hostname`.host_cxt/

# 入力データの保存
rtlog -f test.log ${WORKDIR}division0.rtc:number ${WORKDIR}division0.rtc:denom

# 出力データの再生
rtlog -p -f test.log ${WORKDIR}division0.rtc:number ${WORKDIR}division0.rtc:den
