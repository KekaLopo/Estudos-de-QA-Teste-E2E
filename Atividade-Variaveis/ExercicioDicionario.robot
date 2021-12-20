*** Settings ***
Documentation    Sem fins de testes, apenas para pratica de uso das Variaveis
Library    SeleniumLibrary 

*** Variables ***
&{CADASTRO}    nome=Keka    sobrenome=Lopo    senha=123456    endereco=Rua Framework, Bairro Robot    cidade=Salvador    state=9    postcode=1234    telefone=77-91417985


*** Test Cases ***
Testar algo :01 xd xd 
    Testando algo


*** Keywords ***

Testando algo     
    Log    Eu me chamo ${CADASTRO.nome} ${CADASTRO.sobrenome} minha senha eh ${CADASTRO.senha} e meu endereco eh ${CADASTRO.endereco} moro na cidade de ${CADASTRO.cidade} meu stata eh igual a ${CADASTRO.state} meu cep ${CADASTRO.postcode} e meu telefone ${CADASTRO.telefone}
