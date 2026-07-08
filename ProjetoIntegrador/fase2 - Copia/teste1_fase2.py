# -*- encoding=utf8 -*-
__author__ = "sarah"
from airtest.core.api import *
from airtest.core.error import TargetNotFoundError
auto_setup(__file__, devices=["Windows:///"], logdir=True)

# teste 1- verificar que a fase 2 carregou
try:
    wait(Template(r"tpl1783460285992.png", record_pos=(-0.003, -0.001), resolution=(1366, 768)))
    snapshot(msg="PASSOU: Fase 2 carregou corretamente")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Fase 2 não carregou")


