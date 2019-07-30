#! /bin/sh

H=`hostname`

# コンポーネント確認
rtls -R localhost/
rtcat -l localhost/${H}.host_cxt/ConsoleIn0.rtc
rtcat -l localhost/${H}.host_cxt/ConsoleOut0.rtc

# ポート接続
rtcon localhost/${H}.host_cxt/ConsoleIn0.rtc:out\
      localhost/${H}.host_cxt/ConsoleOut0.rtc:in

# 動作開始
rtact localhost/${H}.host_cxt/ConsoleIn0.rtc\
      localhost/${H}.host_cxt/ConsoleOut0.rtc
