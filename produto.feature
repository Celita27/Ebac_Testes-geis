#language: pt

Funcionalidade: Configurar produtos

Descrição:
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

#Critérios de Aceitação
1. Seleções de cor, tamanho e quantidade devem ser obrigatórios
2. Deve permitir apenas 10 produtos por compra
3. Quando eu clicar no botão "limpar" deve voltar ao estado original

Contexto:
Dado que eu acesse a página de detalhes do produto na EBAC-SHOP e deseja comprar um produto;

Cenário: Quantidade máxima obrigatória
Quando tentar adicionar mais de 10 produtos no carrinho,
E a comprar não for permitida
Então o sistema deve exibir uma mensagem de erro indicando que "excedeu limite máximo de produtos por compra"

Cenário: Limpar seleção de produto da EBAC-SHOP
Quando selecionar a cor, o tamanho e a quantidade de produto
E clicar no botão "limpar"
Então os produtos selecionados como cor, tamanho e quantidade serão resetadas para os valores padrão
E deve exibir uma mensagem "itens apagados com sucesso"


Cenário: Selecionar itens fora do estoque no Checkout
Quando selecionar um item fora de estoque
E tentar finalizar a compra
Então deve exibir uma mnensagem de erro "item fora de estoque"

Cenário: Preencher Informações de Cadastro no Checkout
Quando inserir os campos <cor>, <tamanho>, <quantidade> para cada item 
E clicar no botão "Finalizar compra"
Então deve processar com sucesso

            | cor   | tamanho | quantidade |
            | Azul  | M       | 2          |
            | Preto | G       | 1          |
            | Verde | P       | 3          |
            | Rosa  | P       | 4          |


