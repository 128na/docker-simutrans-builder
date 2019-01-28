@echo off
git clone https://github.com/aburch/simutrans.git ./app/src/simutrans

cp ./app/config/config.default ./app/src/simutrans/config.default
REM cp ./app/config/Makefile ./app/src/simutrans/Makefile

docker-compose build
docker-compose run --rm app make
