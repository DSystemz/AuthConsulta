# controlador.php?acao=painel_adv_listar&acao_origem=principal&hash=077a0c2f3c242e19fd8f1d712c7ae169
# controlador.php?acao=painel_adv_listar&acao_origem=principal&hash=077a0c2f3c242e19fd8f1d712c7ae169
# baixar chromedriver para o computador em questao
# url aparentemente sem alteração ao iniciar uma nova homepage ou atualizar.
# -*- coding: windows-1252 -*-
import pandas as pd
import os
import time
from selenium import webdriver
def inicial():
    reu = open('R.xlsx', 'r')
    csvf = pd.read_excel("RS.xlsx", usecols=[2, 6], skiprows=[0,1,2], names='12')
    df = pd.DataFrame.to_string(csvf)
    numContrato = open('numContrato.txt', 'w')
    numContrato.write(df)
    numContrato.close()
    abra = open("numContrato.txt")
class digite:
    def __init__(self):
        self.email = ('dograx.duarte@gmail.com')
        self.content = ('PYTHON')
        options = webdriver.ChromeOptions()
        options.add_argument('lang=pt-br')
        options.binary_location = "C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe"
        self.driver = webdriver.Chrome(executable_path=r"./chromedriver.exe", )
    def request(self):
        self.driver.get('https://likegeeks.com')
        time.sleep(15)
        for cont in self.content:
            url = "https://likegeeks.com/python/"
            cont = self.driver.find_element_by_xpath('//a[@href="'+url+'"]')
            time.sleep(3)
            cont.click()
            email = self.driver.find_element_by_xpath("""".//div[@class='tnp-field tnp-field-email']/""")
            time.sleep(3)
            email.click()
            email.send_keys(self.email)
            time.sleep(4)
            sub = self.driver.find_element_by_class_name("tnp-submit")
            time.sleep(4)
            sub.click()
inicial()
bot = digite()
bot.request()
# arquivo txt é utilizado durante conexão com o site para busca de informações(ADVOGADOS DO RÉU, CPF)

#if reu == process and (or) cpf == process2:
