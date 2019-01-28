FROM oblique/archlinux-yay


RUN /usr/sbin/sed -i -e "s/Defaults requiretty.*/ #Defaults requiretty/g" /etc/sudoers && \
    /usr/sbin/echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN ln -s /usr/lib/libreadline.so.7 /usr/lib/libreadline.so.8

RUN /usr/sbin/groupadd --system sudo && \
    /usr/sbin/useradd -m --groups sudo user
USER user

RUN yay -Sy --noconfirm base-devel git zip unzip
RUN yay -Sy --noconfirm mingw-w64-crt-bin mingw-w64-binutils-bin mingw-w64-headers-bin mingw-w64-winpthreads-bin
RUN yay -Sy --noconfirm mingw-w64-gcc-bin
RUN yay -Sy --noconfirm mingw-w64-zlib mingw-w64-bzip2 mingw-w64-libpng

ADD ./src /src

WORKDIR /src/simutrans

USER root

# RUN make -j9

# USER root

# # update system
# RUN pacman -Sy --noconfirm archlinux-keyring \
#     && pacman-key --init \
#     && pacman-key --refresh-keys \
#     && pacman -Syyu --noconfirm \
#     && gpg --recv-keys 13FCEF89DD9E3C4F 93BDB53CD4EBC740 A328C3A2C3C45C06
# # install dev tools
# # https://qiita.com/Aruneko/items/373ed7d135b6f686dbd9
# USER user

