            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Descrição: Como cliente da EBAC SHOP
            Quero concluir meu cadastro
            Para finalizar a compra

            #Critérios de Aceitação:
            #1. Todos os dados com asteriscos são obrigatórios, devem ser cadastrados
            #2. Ao cadastrar o <email> com formato inválido, sistema deve inserir mensagem de erro
            #3. Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta


            Contexto:
            Dado que o cliente está na tela de cadastro durante o processo de checkout da EBAC SHOP

            Cenário: Deve ser cadastrado com todos dados obrigatórios marcados com asteriscos (*)
            E impedir o avanço para finalização da compra.
            Então os campos obrigatórios não preenchidos serão destacados
            E uma mensagem indicando onde "estão faltando as informações obrigatórias"

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inseir mensagem de erro
            Quando preencher todos os campos obrigatórios, incluindo campo de e-mail, com formato inválido,
            Então exibe uma mensagem de erro específica ao lado do campo e-mail, indicando que o "formato de e-mail inválido"

            Cenário: Preencher informações de cadastro no Checkout
            Quando preencher todos os campos <nome>, <sobrenome>, <e-mail>, <Endereço>, <cidade>, e <cep> que são obrigatórios no cadastro
            E clicar no botão "finalizar compra"
            Então o sistema deve registrar as informações de cadastro do cliente


            | Nome  | Sobrenome | Email                    | Endereço              | Cidade         | CEP        |
            | João  | Silva     | joao.silva@example.com   | Rua das Flores, 123   | São Paulo      | 01234-567  |
            | Maria | Santos    | maria.santos@example.com | Av. das Palmeiras, 45 | Rio de Janeiro | 98765-432  |
            | Ana   | Pereira   | ana.pereira@example.com  | Recanto Faraó, SN     | Goiás          | 725000-985 |




