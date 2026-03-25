@echo off
echo Starting image optimization...
echo.

rem Loop through all .jpg files in the current folder and all subfolders
FOR /R %%F IN (*.jpg) DO (
    echo Processing: %%~nxF

    rem Generate Large (1920px wide)
    magick "%%F" -resize 1920x -quality 80 -define webp:lossless=false "%%~dpnF_L.webp"

    rem Generate Medium (1024px wide)
    magick "%%F" -resize 1024x -quality 80 -define webp:lossless=false "%%~dpnF_M.webp"

    rem Generate Small (600px wide)
    magick "%%F" -resize 600x -quality 80 -define webp:lossless=false "%%~dpnF_S.webp"
)

echo.
echo All images have been optimized!
pause