@ECHO OFF
:0
CLS
ECHO You are dying. 1=live, 2=die
set /p w=""
if %w% == 1 goto 1
goto 2
CLS
:2
CLS
ECHO You died. Press 1
set /p w=""
if %w% == 1 goto 0
goto 2
:1
CLS
ECHO You won
PAUSE
