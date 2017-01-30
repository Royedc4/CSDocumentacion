@echo off

set stc=192.168.3.10
set apc=192.168.3.8
set stb=192.168.3.7
set apb=192.168.3.6
set sta=192.168.3.5
set apa=192.168.3.11

echo Programa usado para detectar una posible falla entre la conexion Barrio Obrero y Tariba
echo.
ping -n 5 %stc% | find "TTL=" >nul
IF errorlevel 1 (
	echo Actualmente no existe conexion con la antena ST-C. Posible falla antena Barrio Obrero %date% %time% 
	pause
	exit
) ELSE (
	echo Conexion en linea con la antena ST-C
)

ping -n 5 %apc% | find "TTL=" >nul
IF errorlevel 1 (	
	echo Actualmente no existe conexion con la antena AP-C. Posible falla antenas Tucape %date% %time%
	pause
	exit
) ELSE (
	echo Conexion en linea con la antena AP-C
)

ping -n 5 %stb% | find "TTL=" >nul
IF errorlevel 1 (	
	echo Actualmente no existe conexion con la antena ST-B. Posible falla antenas Tucape %date% %time%
	pause
	exit
) ELSE (
	echo Conexion en linea con la antena ST-B
)

ping -n 5 %apb% | find "TTL=" >nul
IF errorlevel 1 (	
	echo Actualmente no existe conexion con la antena AP-B. Posible falla antenas Palo Gordo %date% %time%
	pause
	exit
) ELSE (
	echo Conexion en linea con la antena AP-B
)

ping -n 5 %sta% | find "TTL=" >nul
IF errorlevel 1 (	
	echo Actualmente no existe conexion con la antena ST-A. Posible falla antenas Palo Gordo %date% %time%
	pause
	exit
) ELSE (
	echo Conexion en linea con la antena ST-A
)

ping -n 5 %apa% | find "TTL=" >nul
IF errorlevel 1 (
	echo Actualmente no existe conexion con la antena AP-A. Posible falla antena Tariba %date% %time% 
	pause
	exit
	) ELSE (
	echo Conexion en linea con la antena AP-A
)
echo.
echo Conexion con Tariba, sin problemas.
pause