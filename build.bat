@echo off

docker-compose run --rm app make
docker-compose run --rm app bash /src/simutrans/distribute.sh
