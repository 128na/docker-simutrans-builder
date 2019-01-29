@echo off

docker-compose run --rm app make

docker-compose run --rm app bash /scripts/build.sh
