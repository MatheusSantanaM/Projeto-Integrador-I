# -*- encoding=utf8 -*-
__author__ = "sarah"

from airtest.core.api import *

auto_setup(__file__)

# Teste 6 - Verificar se a Fase 2 carregou corretamente
try:
    wait(Template(r"tpl1783460552073.png", record_pos=(0.005, -0.023), resolution=(1017, 768)), timeout=10)
    snapshot(msg="PASSOU: Fase 2 carregou com sucesso")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Tela inicial da Fase 2 não foi encontrada")
  
# Teste 7 - Seguir reto na placa de proibido virar à direita (Sucesso)
sleep(3.0)
try:
    wait(Template(r"tpl1783460714079.png", record_pos=(0.212, 0.056), resolution=(1255, 768)), timeout=10)
    snapshot(msg="PASSOU: Motorista seguiu reto corretamente no cruzamento")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Não detectou o avanço correto em linha reta")
   
# Teste 8 - Virar à direita proibida (Erro proposital)
sleep(3.0)
try:

    wait(Template(r"tpl1783460839675.png", record_pos=(0.253, -0.204), resolution=(1366, 768)), timeout=10)
    snapshot(msg="PASSOU: Infração de virar em local proibido detectada no painel")
except TargetNotFoundError:
    snapshot(msg="FALHOU: O jogador virou na proibida mas o jogo não penalizou")
    
# Teste 9 - Parar para pedestres na faixa sem sinalização (Sucesso)
sleep(4.0)
try:
    wait(Template(r"tpl1783460988089.png", record_pos=(0.188, 0.117), resolution=(1017, 768)), timeout=15)
    snapshot(msg="PASSOU: O carro parou corretamente antes da faixa e aguardou a travessia")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Não detectou a parada correta na faixa de pedestres")

# Teste 10 - Vitória da Fase 2
sleep(3.0)
try:
    wait(Template(r"tpl1783461099843.png", record_pos=(0.004, -0.133), resolution=(1017, 768)), timeout=15)
    snapshot(msg="PASSOU: Tela de vitória da Fase 2 exibida com sucesso")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Tela de vitória da Fase 2 não apareceu")
    
