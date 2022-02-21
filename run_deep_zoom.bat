md %cd%\output
set outputDir=%cd%\output
for /r %%f in (input\*) do (
    echo %%f
    echo %%~nf
    cd .\libvips\bin\
    start /wait vips dzsave %%f %outputDir%\%%~nf --layout google --background 0 --suffix .webp
)
pause