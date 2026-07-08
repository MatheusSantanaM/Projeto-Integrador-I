# -*- encoding=utf8 -*-
__author__ = "sarah"

from airtest.core.api import *
from airtest.core.error import TargetNotFoundError

auto_setup(__file__, devices=["Windows:///"], logdir=True)

 #Teste 3 -vendo se a faixa de pedestre a
try:
    wait(Template(r"tpl1780435429313.png", record_pos=(-0.001, 0.001), resolution=(1366, 768)), timeout=15)
    snapshot(msg="PASSOU: Faixa de pedestres encontrada")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Faixa de pedestres não apareceu")#