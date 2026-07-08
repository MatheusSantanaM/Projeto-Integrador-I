# -*- encoding=utf8 -*-
__author__ = "sarah"

from airtest.core.api import *

auto_setup(__file__)

# Teste 11 - Cruzamento com placa PARE (Sucesso)
sleep(3.0)
try:
    # Capture a imagem que comprova a parada correta na placa PARE:
    wait(Template(r"tpl1783459348598.png"), timeout=10)
    snapshot(msg="PASSOU: O carro parou completamente no cruzamento com placa PARE")
except TargetNotFoundError:
    snapshot(msg="FALHOU: O carro não realizou a parada obrigatória no cruzamento")
   
# Teste 12 - Interação com pedestres fora da calçada (Sucesso)
sleep(4.0)
try:
    # Capture a imagem que indica a condução segura perto dos pedestres:
    wait(Template(r"tpl1783459520920.png"), timeout=10)
    snapshot(msg="PASSOU: Motorista reduziu a velocidade e manteve distância dos pedestres")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Não detectou a redução de velocidade ou o recuo seguro")

# Teste 13 - Infração com pedestres na pista (Erro proposital)
sleep(3.0)
try:
    # Capture a imagem do texto de erro/infração relacionado aos pedestres:
    wait(Template(r"tpl1783459626977.png"), timeout=10)
    snapshot(msg="PASSOU: Infração com pedestres detectada corretamente no painel")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Cometeu infração com o pedestre mas o jogo não registrou")
 
#  Teste 14 - Respeitar a placa de Dê a Preferência (Sucesso)
sleep(4.0)
try:
    # Capture a imagem que comprova que você deu a preferência corretamente:
    wait(Template(r"tpl1783459791019.png"), timeout=15)
    snapshot(msg="PASSOU: O carro parou e respeitou a preferencial do outro veículo")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Não detectou a parada correta na placa de preferencial")

# Teste 15 - Vitória da Fase 3
sleep(3.0)
try:
    # Capture a imagem da tela de vitória da Fase 3:
    wait(Template(r"tpl1783459898448.png"), timeout=15)
    snapshot(msg="PASSOU: Tela de vitória da Fase 3 exibida com sucesso")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Tela de vitória da Fase 3 não apareceu")

