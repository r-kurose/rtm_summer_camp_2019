for /f "usebackq tokens=*" %%i IN (`hostname`) DO @set H=%%i

rem �R���|�[�l���g�m�F
rtls -R localhost/
rtcat -l localhost/%H%.host_cxt/ConsoleIn0.rtc
rtcat -l localhost/%H%.host_cxt/ConsoleOut0.rtc

rem �|�[�g�ڑ�
rtcon localhost/%H%.host_cxt/ConsoleIn0.rtc:out ^
      localhost/%H%.host_cxt/ConsoleOut0.rtc:in

rem ����J�n
rtact localhost/%H%.host_cxt/ConsoleIn0.rtc ^
      localhost/%H%.host_cxt/ConsoleOut0.rtc
