@echo off
git clone https://github.com/aburch/simutrans.git ./app/src/simutrans

copy app\config\config.default app\src\simutrans\config.default
copy app\config\Makefile app\src\simutrans\Makefile

docker-compose build
