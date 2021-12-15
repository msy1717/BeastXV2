# Ultroid - UserBot
# Copyright (C) 2021 TeamUltroid
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# 

FROM kalilinux/kali-rolling

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt upgrade -y && apt-get install sudo -y

RUN touch ~/.hushlogin

RUN apt-get install -y\

    coreutils \

    bash \

    nodejs \

    bzip2 \

    curl \

    figlet \

    gcc \

    g++ \

    git \

    util-linux \

    libevent-dev \

    libjpeg-dev \

    libffi-dev \

    libpq-dev \

    libwebp-dev \

    libxml2 \

    libxml2-dev \

    libxslt-dev \

    musl \

    neofetch \

    libcurl4-openssl-dev \

    postgresql \

    postgresql-client \

    postgresql-server-dev-all \

    openssl \

    mediainfo \

    wget \

    python3 \

    python3-dev \

    python3-pip \

    libreadline-dev \

    zipalign \

    sqlite3 \

    ffmpeg \

    libsqlite3-dev \

    axel \

    zlib1g-dev \

    recoverjpeg \

    zip \

    megatools \

    libfreetype6-dev \

    procps \

    policykit-1
RUN apt install python3-pip -y

RUN pip3 install -U -r requirements.txt
RUN wget https://raw.githubusercontent.com/msy1717/BeastXV2/master/requirements.txt



CMD ["python3","-m","py-beastx"]
