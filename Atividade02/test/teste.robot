*** Settings ***
Resource    ../resources/resource.robot
Library    SeleniumLibrary

*** Test Cases ***
Caso de Teste 01: Listar Produtos
    [Setup]    Open Browser 
    Acessar página home do site.
    Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Clicar na sub categoria "Summer Dresses" 

Caso de Testes 02: Adicionar Produtos no Carrinho
    Acessar página home do site.
    Digitar o nome de produto "t-shirt" no campo de pesquisa.
    Clicar no botão de pesquisa.
    Clicar no botão "Add to cart" do produto
    Clicar no botão "Proceed to checkout" 
Caso de Testes 03: Remover Produtos 
    Acessar página home do site.
    Clicar no ícone carrinho de compras no menu superior direito
    Clicar no botão de remoção de produtos (delete) no produto do carrinho.

