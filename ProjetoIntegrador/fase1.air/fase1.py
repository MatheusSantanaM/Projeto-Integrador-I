# -*- encoding=utf8 -*-
__author__ = "sarah"

from airtest.core.api import *

auto_setup(__file__)


# Teste 1 - Verificar se a Fase 1 carregou corretamente
try:
    # Insira o nome da imagem inicial da Fase 1 que você capturar agora:
    wait(Template(r"tpl1783458353803.png"), timeout=10)
    snapshot(msg="PASSOU: Fase 1 carregou com sucesso")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Tela inicial da Fase 1 não foi encontrada")

# Teste 2 - Parar no sinal vermelho (Sucesso)
sleep(2.0)
try:
    # Jogue até parar no vermelho e capture a imagem que indica o acerto:
    wait(Template(r"tpl1783458631683.png"), timeout=10)
    snapshot(msg="PASSOU: Jogador parou corretamente no sinal vermelho")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Não detectou a parada correta no sinal vermelho")

# Teste 3 - Avançar o sinal vermelho (Erro proposital)
sleep(3.0)
try:
    # Capture a imagem do texto de infração do sinal vermelho:
    wait(Template(r"tpl1783458726150.png"), timeout=10)
    snapshot(msg="PASSOU: Infração de avanço de sinal vermelho detectada")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Avançou o sinal mas o jogo não registrou infração")
    
# Teste 4 - Passar no sinal verde (Sucesso)
sleep(4.0)
try:
    # Capture a imagem que indica sucesso ao passar no verde:
    wait(Template(r"tpl1783458631683.png"), timeout=10)
    snapshot(msg="PASSOU: Passou corretamente no sinal verde")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Teve problemas ou não registrou a passagem no verde")

# Teste 5 - Vitória da Fase 1
sleep(3.0)
try:
    # Capture a imagem da tela de vitória da Fase 1:
    wait(Template(r"tpl1783459051927.png"), timeout=15)
    snapshot(msg="PASSOU: Tela de vitória da Fase 1 exibida com sucesso")
except TargetNotFoundError:
    snapshot(msg="FALHOU: Tela de vitória da Fase 1 não apareceu")

