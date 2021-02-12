# controlador.php?acao=painel_adv_listar&acao_origem=principal&hash=077a0c2f3c242e19fd8f1d712c7ae169
# controlador.php?acao=painel_adv_listar&acao_origem=principal&hash=077a0c2f3c242e19fd8f1d712c7ae169

# url aparentemente sem alteração ao iniciar uma nova homepage ou atualizar.
# -*- coding: windows-1252 -*-
import pandas as pd
import socket
import os
reu = open('RS.xlsx', 'r')
csvf = pd.read_excel("RS.xlsx", usecols=[2, 6], skiprows=[0,1,2], names='12')
df = pd.DataFrame.to_string(csvf)
numContrato = open('numContrato.txt', 'w')
numContrato.write(df)
numContrato.close()
abra = open("numContrato.txt")
for line in abra:
   count = 0+1
   escreva = "{}{}".format(count, line.strip())
   a = line[20:47]
# arquivo txt é utilizado durante conexão com o site para busca de informações(ADVOGADOS DO RÉU, CPF)

#if reu == process and (or) cpf == process2:

