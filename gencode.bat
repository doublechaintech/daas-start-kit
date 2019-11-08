@echo off

set PDIR=%~dp0

set modelFile=%~f1
set project=%~n1

if %project% == "" (
  echo "bad command"
  echo "%0 modelFile [genScope]"
  echo "for example: %0 bank.xml"
  exit -1
)

set scope=%2
if %scope% == "" (
  set scope=all
)

java -jar %PDIR%\daas-client\daas-client-all.jar %project% %scope% %PDIR% %modelFile% "https://daas.doublechaintech.com" %PDIR%\daas.tok
@echo on
