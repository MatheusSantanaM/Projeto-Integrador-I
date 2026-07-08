# -*- encoding=utf8 -*-
__author__ = "sarah"

from airtest.core.api import *
from airtest.core.error import TargetNotFoundError

auto_setup(__file__, devices=["Windows:///"], logdir=True)

# teste 2 -passar direto sem parar na placa
sleep(2.0)
try:
    wait(Template(r"tpl1780435013047.png", record_pos=(0.004, -0.001), resolution=(1366, 768)))
    snapshot(msg="PASSOU: Infração detectada ao passar direto")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Deveria ter dado infração mas não deu")