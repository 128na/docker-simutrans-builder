@echo off
git config --local core.autocrlf false

git clone https://github.com/aburch/simutrans.git ./app/src/simutrans

cp ./app/config/config.default ./app/src/simutrans/config.default
cp ./app/config/Makefile ./app/src/simutrans/Makefile

docker-compose build
