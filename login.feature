#language: pt

Funcionalidade: login na plataforma
Como cliente da Ebac-Shop
Quero fazer o login (autenticação) na plataforma 
Para visualizar meus pedidos

#Critérios de aceitação:
1. Ao inserir dados válidos deve ser direcionado para a tela de checkout
2. Ao inserir um dos campos com dados inválidos deve exibir uma mensagem de alerta "usuário ou senha inválidos"

Contexto: Dado que o cliente está na página de login da plataforma da EBAC-SHOP

Cenário: ao inserir dados válidos deve ser direcionado para tela de Checkout
Quando inserir dados válidos de login com nome de usuários e senha corretos;
Então sistema direciona para tela de checkout

 Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos"
 Quando Inserir dados inválidos de login, como um nome de usuário ou senha incorretos:
 Então sistema deve exibir mensagem de alerta "usuário ou senha inválido"

Cenário: Recuperar senha fornecendo e-mail associado á conta cadastrada
Quando ao clicar no link "esqueceu sua senha?" na página do login 
E for redirecionado a página de recuperação de senha
E fornecer o e-mail associado à conta na caixa de entrada
Então deve enviar um email de recuperação de senha para o e-mail fornecido com a mensagem de sucesso: "e-mail enviado com instruções para recuperação de senha"

Cenário: Registrar último acesso do usuário
Dado que estou na página de administração da plataforma
Quando o <usuário> fizer login na plataforma 
Então o sistema deve registrar a <data> e <hora> do último acesso

|usuário  | Data       | Hora     |
|joão123  | 2024-02-07 | 10:30:45 |   
|maria 456| 2024-02-06 | 15:20:10 |     
|pedro789 | 2024-02-07 | 08:45:22 |







