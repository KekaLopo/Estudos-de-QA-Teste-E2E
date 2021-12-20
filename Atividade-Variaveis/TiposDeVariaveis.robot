*** Settings ***
Documentation    Exemplo de Tipos de variaveis: SIMPLES, LISTAS E DICIONARIOS


*** Variables ***
#SIMPLES
${GLOBAL_SIMPLES}    SOU MUITO SIMPLES
#LISTA (ARRAY)
@{FRUTAS}    morango    banana    pera    uva     abacaxi
#Dicionario(OBJETOS)
&{PESSOA}    nome=Keka    email=quacklopes@gmail.com    idade=10    sexo=masculino

*** Test Cases ***
Caso de Teste Exemplo 01
    Uma Keyword qualquer 01

*** Keywords ***
Uma Keyword qualquer 01
        #SIMPLES
    Log    ${GLOBAL_SIMPLES}    
        #LISTA
    Log    Eu quero comer uma ${FRUTAS[2]} Verde e um ${FRUTAS[0]} bem vermelho
        #DICIONARIO 
    Log    Mi Nombre es ${PESSOA.nome} y soy del sexo ${PESSOA.sexo}