@echo off
echo =======================================================
echo WARNING: You are about to delete ALL .jpg files.
echo Make sure your .webp conversions look good first!
echo =======================================================
echo.
pause

echo.
echo Deleting .jpg files...
del /s /q "*.jpg"

echo.
echo Cleanup complete! All .jpg files have been removed.
pause