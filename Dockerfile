# Ultroid - UserBot
# Copyright (C) 2021 TeamUltroid
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# 

FROM kalilinux/kali-rolling

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt upgrade -y && apt-get install sudo -y

RUN touch ~/.hushlogin



#Start Fumkin

RUN pip3 install -r requirements.txt

CMD ["bash", "resources/startup/startup.sh"]
