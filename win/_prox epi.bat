@echo off
@title DEXTER
color 0a

set /p EPISODIO=<atual.txt

echo reproduzindo episodio %EPISODIO%

REM retirando espaço que tah no txt nao sei pq
set /a EPISODIO=EPISODIO+1
set /a EPISODIO=EPISODIO-1

IF %EPISODIO% LSS 10 (
	"C:\Program Files (x86)\Real Alternative\Media Player Classic\mplayerc.exe" "D:\Series\Dexter\Dexter (S1)\de.1x0%EPISODIO%.by.greenarrow.brazilseries.rmvb" -play -close -fullscreen -start 61000
) ELSE IF %EPISODIO% LSS 100 (
	"C:\Program Files (x86)\Real Alternative\Media Player Classic\mplayerc.exe" "D:\Series\Dexter\Dexter (S1)\de.1x%EPISODIO%.by.greenarrow.brazilseries.rmvb" -play -close -fullscreen -start 61000
)

echo ATUALIZANDO ATUAL.TXT
set /a EPISODIO=EPISODIO+1
echo %EPISODIO% > atual.txt

REM 10 horas
REM shutdown -s -t 36000 -c "FIM DO SHOW!\nBOA NOITE!"

REM 1 minuto
REM shutdown -s -t 60 -c "FIM DO SHOW!\nBOA NOITE!"