# Ultroid - UserBot
# Copyright (C) 2021 TeamUltroid
#
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# PLease read the GNU Affero General Public License in
# <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

from py-beastx import *
from py-beastx.functions.helper import *
from py-beastx.misc import owner_and_sudos
from py-beastx.misc._assistant import asst_cmd, callback, in_pattern
from telethon import Button, custom

from plugins import ATRA_COL
from strings import get_languages, get_string, language

OWNER_NAME = beastx_bot.me.first_name
OWNER_ID = beastx_bot.me.id

AST_PLUGINS = {}


async def setit(event, name, value):
    try:
        mrunal.set(name, value)
    except BaseException:
        return await event.edit("`Something Went Wrong`")


def get_back_button(name):
    return [Button.inline("« Bᴀᴄᴋ", data=f"{name}")]
