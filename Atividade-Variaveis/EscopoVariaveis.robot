*** Settings ***
Documentation    Exemplo de Escopo e variaveis: Globais, Suite, Teste e Local
Library    String

*** Variables ***
${GLOBAL_INSTANCIADA}    Minha Variavel Global_Instanciada.

*** Test Cases ***
Caso de teste de exemplo 01
    Uma Keyword qualquer 01
    Uma Keyword qualquer 02

Caso de teste de exemplo 02
    Uma Keyword qualquer 02
    Uma Keyword qualquer 03


*** Keywords ***
Uma Keyword qualquer 01
    ${GLOBAL_CRIADA_EM_TEMPO_DE_EXECUCAO}    Generate Random String
    #A Variavel "Global" pode ser utilizada em todos os suites em execucao
    Set Global Variable    ${GLOBAL_CRIADA_EM_TEMPO_DE_EXECUCAO} 
    #A Variavel "Suite" pode ser utilizada somente nos testes do suite em exeucao
    Set Suite Variable    ${SUITE_CRIADA_EM_TEMPO_DE_EXECUCAO}    Variavel da Suite
    #A Varivael "Test" pode ser utilizada somente nas Keywords do teste em execucao
    Set Test Variable    ${TESTE_01}    Variavel do Teste 01
    Log    ${TESTE_01}
    #A Variavel "Local" pode ser utilizada somente na keyword em execucao
    ${LOCAL}    Set Variable    Variavel local da Keyword 01

Uma Keyword qualquer 02
    ${LOCAL}    Set Variable    Variavel Local da Keyword 02
    Log    ${LOCAL}
    Log    ${GLOBAL_INSTANCIADA} / ${GLOBAL_CRIADA_EM_TEMPO_DE_EXECUCAO} / ${SUITE_CRIADA_EM_TEMPO_DE_EXECUCAO} / ${LOCAL}
    #Erro esperado nessa Suite
    Log    ${TESTE_01}
Uma Keyword qualquer 03
    ${LOCAL}    Set Variable    Variavel Local da keyword 03
    Log    ${Local}
    Log    ${GLOBAL_INSTANCIADA} / ${GLOBAL_CRIADA_EM_TEMPO_DE_EXECUCAO} / ${SUITE_CRIADA_EM_TEMPO_DE_EXECUCAO} / ${LOCAL} 
