md %cd%\output
md %cd%\enlarge
set outputDir=%cd%\output
set enlargeDir=%cd%\enlarge

rem ENLARGE PICTURES IN INPUTS FOLDER
for /r %%f in (input\*) do (
    echo %%f
    echo %%~nf
    cd .\libvips\bin\
    start /wait vips resize %%f %enlargeDir%\%%~nxf 10
)

rem MAKE DEEP ZOOM TILES FOR PICTURES IN ENLARGE FOLDER
for %%d in ( %enlargeDir%\*) do (
    echo %%d
    echo %%~nd
    cd .\libvips\bin\
    start /wait vips dzsave %%d %outputDir%\%%~nd --layout google --background 0 --suffix .webp
)
pause