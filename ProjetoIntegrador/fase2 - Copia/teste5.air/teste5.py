# -*- encoding=utf8 -*-
__author__ = "sarah"

from airtest.core.api import *
from airtest.core.error import TargetNotFoundError
auto_setup(__file__, logdir=True, devices=["Windows:///"])

# teste 5-verificar tela de acerto
try:
    wait(Template(r"acertou.png"), timeout=15)
    snapshot(msg="PASSOU: Tela de acerto apareceu corretamente")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Tela de acerto não apareceu")
