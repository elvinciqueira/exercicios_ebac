Feature: Login na Plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Background:
    Given eu acesse a "Página de Login"*

  Scenario: Ao inserir dados válidos deve ser direcionado para a tela de checkout
    When eu inserir o usuário "elvin@ebac.com.br"
    And eu inserir a senha "123456"
    Then deve ser direcionado para a tela de checkout

  Scenario Outline: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
    When eu inserir o usuário <usuario-invalido> ou senha <senha-invalida>
    Then deve exibir mensagem de alerta <mensagem de alerta>

    Examples:
      | usuario-invalido    | senha-invalida   | mensagem de alerta           |
      | "usuário-inválido"  | "senha-inválida" | "Usuário ou senha inválidos" |
      | "elvin@ebac.com.br" | "1234"           | "Usuário ou senha inválidos" |
      | "elvin@ebc.com.br"  | "123456"         | "Usuário ou senha inválidos" |
