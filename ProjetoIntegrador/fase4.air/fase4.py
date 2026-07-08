# -*- encoding=utf8 -*-
__author__ = "sarah"
from airtest.core.api import *
from airtest.core.error import TargetNotFoundError

auto_setup(__file__, devices=["Windows:///"], logdir=True)

# Teste 1 - Verificar que a Fase 4 carregou corretamente
try:
    wait(Template(r"tpl1783452289960.png"), timeout=10)
    snapshot(msg="PASSOU: Fase 4 carregou corretamente")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Fase 4 não carregou")

# Teste 2 - Ultrapassar o limite de velocidade (erro proposital)
sleep(3.0)
try:
    wait(Template(r"tpl1783454733033.png"), timeout=10)
    snapshot(msg="PASSOU: Infração de excesso de velocidade detectada")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Ultrapassou o limite mas não registrou infração")


# Teste 3 - Entrar na contramão (erro proposital)
sleep(3.0)
try:
    wait(Template(r"tpl1783455024648.png"), timeout=10)
    snapshot(msg="PASSOU: Infração de contramão detectada")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Entrou na contramão mas não registrou infração")
    
# Teste 4 - Bater no carro da frente (erro proposital)
sleep(3.0)
try:
    wait(Template(r"tpl1783455176568.png"), timeout=10)
    snapshot(msg="PASSOU: Colisão com carro detectada")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Bateu no carro mas não registrou infração")

# Teste 5 - Completar a fase sem infrações
sleep(5.0)
try:
    wait(Template(r"tpl1783457417192.png"), timeout=30)
    snapshot(msg="PASSOU: Fase 4 concluída sem infrações")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Fase 4 não foi concluída corretamente")
    

    
