*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    http://automationpractice.com
${BROWSER}    ff

*** Keywords ***
#### Passo a Passo
Acessar página home do site.
    Go To    ${URL}    
    Sleep    2s 

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Mouse Over    xpath=/html/body/div[1]/div[1]/header/div[3]/div/div/div[6]/ul/li[1]/a

Clicar na sub categoria "${CATEGORIA}" 
   Simulate Event    XPath= //*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]    Click
                
Digitar o nome de produto "${PRODUTO}" no campo de pesquisa.
    Input Text    XPath=/html/body/div/div[1]/header/div[3]/div/div/div[2]/form/input[4]    ${PRODUTO}

Clicar no botão de pesquisa.
    Click Button    XPath=/html/body/div/div[1]/header/div[3]/div/div/div[2]/form/button
    Sleep    2s
Clicar no botão "Add to cart" do produto
    Wait Until Element Is Visible    class= page-heading
    Simulate Event   xpath= //*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]    click   
    Sleep    1s
Clicar no botão "Proceed to checkout"
    Simulate Event    xpath= //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a    click

Clicar no ícone carrinho de compras no menu superior direito
    Click Element    xpath= //*[@id="header"]/div[3]/div/div/div[3]/div/a
    Sleep    1s

Clicar no botão de remoção de produtos (delete) no produto do carrinho.
    Wait Until Element Is Visible    xpath= //*[@id="product_1_1_0_0"]/td[7]
    Simulate Event    xpath= //*[@id="1_1_0_0"]    click

Clicar no botão superior direito “Sign in”
    Click Element     xpath= //a[@title="Log in to your customer account"]
    Sleep    2s


Inserir um e-mail válido.
    Input Text    id= email_create    ${EMAIL}
    Sleep    4s

    
Clicar no botão "Create na account"
    Click Element    xpath=//*[@id="SubmitCreate"]/span
    Sleep    2s
    Wait Until Element Is Visible    xpath=//*[@id="account-creation_form"]/div[1]/h3
Preencher os campos obrigatórios
    Select Radio Button    id_gender   1    
    Input Text    id=customer_firstname     Joao Pedro
    Input Text    id=customer_lastname      Lopo
    Input Text    id=email    ${EMAIL}
    Input Password    id=passwd    123456


Clicar em "Register"para finalizar o cadastro
