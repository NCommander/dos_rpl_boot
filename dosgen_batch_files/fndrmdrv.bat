:: FNDRMDRV.BAT - Sets envvar !R! to the letter of the ram drive, if any.
:: 8-4-97 m donn
@echo off
%3
set !R!=|set !D!=!
ctty nul
for %%V in (C D E F G H I J K L M N) do call %0 %%V x goto:2nd
for %%V in (O P Q R S T U V W X Y Z) do call %0 %%V x goto:2nd
ctty con
goto end
:2nd
if .%!D!%.==.. goto end
set !D!=
> volume.bat echo if not .%%5.==.. %0 %%5 %1 goto:3rd
>>volume.bat vol %1:
for %%V in (call del goto:end) do %%V volume.bat
:3rd
set !D!=!
if .%1.==.MS-RAMDRIVE. set !R!=%2:
:end
