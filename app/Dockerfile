FROM oblique/archlinux-yay


RUN /usr/sbin/sed -i -e "s/Defaults requiretty.*/ #Defaults requiretty/g" /etc/sudoers && \
    /usr/sbin/echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN /usr/sbin/groupadd --system sudo && \
    /usr/sbin/useradd -m --groups sudo user
USER user

# https://qiita.com/Aruneko/items/373ed7d135b6f686dbd9
RUN yay -Syyu --noconfirm
RUN yay -Sy --noconfirm base-devel git zip unzip
RUN yay -Sy --noconfirm mingw-w64-crt-bin mingw-w64-binutils-bin mingw-w64-headers-bin mingw-w64-winpthreads-bin
RUN yay -Sy --noconfirm mingw-w64-gcc-bin
RUN yay -Sy --noconfirm mingw-w64-zlib mingw-w64-bzip2 mingw-w64-libpng

USER root

WORKDIR /tmp
RUN pacman -S wget --noconfirm \
    && wget http://dl.sourceforge.jp/nkf/70406/nkf-2.1.5.tar.gz \
    && tar zxvf nkf-2.1.5.tar.gz \
    && cd nkf-2.1.5 \
    && make \
    && make install

ADD ./src /src
WORKDIR /src/simutrans
