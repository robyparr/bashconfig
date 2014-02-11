@ECHO OFF

REM Configuration Variables
SET bin_dir=C:\cygwin64\usr\local\
SET home_dir=C:\cygwin64\home\Roby\

ECHO bin directory: %bin_dir%
ECHO home directory: %home_dir%


IF "%1" == "" GOTO deploy
IF "%1" == "deploy" GOTO deploy
IF "%1" == "backup" GOTO backup

REM Catch incorrect params
GOTO end

:deploy
ECHO Deploying...
COPY /-Y bin %bin_dir%bin
COPY /-Y .bashrc %home_dir%
GOTO end

:backup
ECHO Backing up...
COPY /-Y %bin_dir%bin bin
COPY /-Y %home_dir%.bashrc .bashrc

:end
ECHO Finished.
