# Ultroid - UserBot
# Copyright (C) 2021 TeamUltroid
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >

FROM theteamultroid/ultroid:main

# set timezone

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \

    # cloning the repo and installing requirements.

    && git clone https://github.com/msy1717/BeastXV2.git /root/msy1717/ \

    && pip3 install --no-cache-dir -r root/msy1717/requirements.txt \

    && pip3 uninstall av -y && pip3 install av --no-binary av

# changing workdir

WORKDIR /root/msy1717/

# start the bot

CMD ["python3", "py-Beastx"]

