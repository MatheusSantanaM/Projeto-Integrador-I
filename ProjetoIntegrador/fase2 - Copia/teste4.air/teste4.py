# -*- encoding=utf8 -*-
__author__ = "sarah"

from airtest.core.api import *
from airtest.core.error import TargetNotFoundError
auto_setup(__file__, logdir=True, devices=["Windows:///"])

# teste 4- atropelar o scoobdoo
sleep(1.0)
try:
wait(Template(r"errou.png"), timeout=10)
    snapshot(msg="PASSOU: Infração detectada ao atropelar pedestres")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Deveria ter dado infração mas não deu")