for /f "usebackq tokens=*" %%i IN (`hostname`) DO @set H=%%i

rem コンポーネント確認
rtls -R localhost/
rtcat -l localhost/%H%.host_cxt/ConsoleIn0.rtc
rtcat -l localhost/%H%.host_cxt/ConsoleOut0.rtc

rem ポート接続
rtcon localhost/%H%.host_cxt/ConsoleIn0.rtc:out ^
      localhost/%H%.host_cxt/ConsoleOut0.rtc:in

rem 動作開始
rtact localhost/%H%.host_cxt/ConsoleIn0.rtc ^
      localhost/%H%.host_cxt/ConsoleOut0.rtc
