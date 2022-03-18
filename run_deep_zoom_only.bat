md %cd%\output
set outputDir=%cd%\output

rem MAKE DEEP ZOOM TILES FOR PICTURES IN INPUT FOLDER
for /r %%f in (input\*) do (
    echo %%f
    echo %%~nf
    cd .\libvips\bin\
    start /wait vips dzsave %%f %outputDir%\%%~nf --layout google --background 256 --suffix .webp --tile-size 512
)
pause