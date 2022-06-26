@ECHO OFF
IF NOT "%1"=="" SET A="-%1"
IF /I "%2"=="A" SET B=-Alpha
IF /I "%2"=="B" SET B=-Beta
SET C="%A%%B%"
IF EXIST Package-log.txt DEL Package-log.txt
jar -vcfM Interplanetary_Industries%C%.jar bundles\ content\ maps\ schematics\ scripts\ sounds\ sprites\ sprites-override\ .gitignore icon.png LICENSE mod.hjson README.md>>Package-log.txt
IF %ERRORLEVEL%==0 (
    ECHO 打包成功
    PAUSE
) ELSE (
    ECHO 打包失败
    PAUSE
)
EXIT