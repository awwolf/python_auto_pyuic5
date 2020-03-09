@echo off
for /f "tokens=*" %%G in ('dir /b /s "*.ui"') do (
	echo -Converting: %%~nxG
	python -m PyQt5.uic.pyuic -x "%%G" -o "%%~dpnG.py"
)
