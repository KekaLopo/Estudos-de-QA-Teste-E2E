*** Test Cases ***
Teste do novo formato do formato
    Novo formato do for em listas
    Cria dicionarios de traducoes
    Novo formato do for em listas aninhado
   
*** Variables ***
@{LETRAS}    P    M    G    

*** Keywords ***
Novo formato do for em listas
    FOR    ${ANIMAL}    IN    Gato    cachorro    cavalo
        Log    O ANIMAL DESSE LACO EH :${ANIMAL}!        
    END

Cria dicionarios de traducoes
    FOR    ${INDEX}    ${ENGLISH}    ${PORTUGUES}    IN
    ...    1            CAT            GATO
    ...    2            DOG            CACHORRO
        Log    ${INDEX}    ${ENGLISH}    ${PORTUGUES}
        
    END

Novo formato do for em listas aninhado
    FOR    ${PRODUTO}    IN    camisa    calca    bermuda
            Tamanho dos produtos    ${PRODUTO}
            Log    ${PRODUTO}        
    END
Tamanho dos produtos   
    [Arguments]  ${PRODUTO}
    FOR    ${TAMANHO}    IN    @{LETRAS}
        Log   Produto: ${PRODUTO}  Tam: ${TAMANHO}        
    END
    