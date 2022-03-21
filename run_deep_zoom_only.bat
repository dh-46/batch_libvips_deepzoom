md %cd%\output
set outputDir=%cd%\output

rem MAKE DEEP ZOOM TILES FOR PICTURES IN INPUT FOLDER
for /r %%f in (input\*) do (
    echo %%f
    echo %%~nf
    cd .\libvips\bin\
    start /wait vips dzsave %%f %outputDir%\%%~nf --layout google --suffix .webp --background "0 0 0" --tile-size 512
)
pause