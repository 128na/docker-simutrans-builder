# docker-simutrans-builder
Simutrans を Arch Linux 上でクロスコンパイルする程度の環境

#requirements
Docker

# usage(win)
```
git clone https://github.com/128na/docker-simutrans-builder.git
cd docker-simutrans-builder
setup.bat
```

# usage(linux, mac)
```
git clone https://github.com/128na/docker-simutrans-builder.git
cd docker-simutrans-builder
sh setup.sh
```

# compile
```
docker-compose run app --rm make
```
