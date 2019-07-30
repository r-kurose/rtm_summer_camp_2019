#!/bin/sh

# 位置の移動
WORKDIR=/localhost/`hostname`.host_cxt/

# テスト結果の確認
rtprint ${WORKDIR}division0.rtc:result -n 100

# テストデータの送信
rtinject ${WORKDIR}division0.rtc:number -c 'RTC.TimedLong({time}, 10)'
rtinject ${WORKDIR}division0.rtc:denom -c 'RTC.TimedLong({time}, 2)'

rtinject ${WORKDIR}division0.rtc:number -c 'RTC.TimedLong({time}, 10)'
rtinject ${WORKDIR}division0.rtc:denom -c 'RTC.TimedLong({time}, 1)'

rtinject ${WORKDIR}division0.rtc:number -c 'RTC.TimedLong({time}, 20)'
rtinject ${WORKDIR}division0.rtc:denom -c 'RTC.TimedLong({time}, 2)'

rtinject ${WORKDIR}division0.rtc:number -c 'RTC.TimedLong({time}, 20)'
rtinject ${WORKDIR}division0.rtc:denom -c 'RTC.TimedLong({time}, 0)'
