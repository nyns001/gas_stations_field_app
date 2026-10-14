@echo off
chcp 65001 >nul
echo.
echo ==========================================
echo  IP DEL ORDENADOR PARA ABRIR EN EL IPHONE
echo ==========================================
echo.
ipconfig | findstr /i "IPv4"
echo.
echo Busca la IPv4 de Wi-Fi, por ejemplo 192.168.1.45
echo En el iPhone abre Safari y escribe:
echo http://TU-IP:5500/
echo Ejemplo: http://192.168.1.45:5500/
echo.
pause
