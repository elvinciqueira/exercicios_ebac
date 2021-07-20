Feature: Tela de Cadastro - Checkout

  Como cliente da EBAC-SHOP
  Quero fazer concluir meu cadastro
  Para finalizar minha compra

  Background:
    Given eu estou na tela de checkout

  Scenario: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
    When eu preencho todos os campos obrigatórios marcados com asteriscos
    And eu clico no botão "Finalizar Compra"
    Then deve aparecer mensagem de confirmação de compra "Seu pedido esta sendo processado"

  Scenario: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
    When eu tento cadastrar com campos vazios
    Then deve exibir mensagem de alerta "Campos com asterico são obrigatórios"

  Scenario Outline: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
    When eu preencho o campo "e-mail" com um <valor>
    Then deve aparecer a mensagem de erro "e-mail está em um formato inválido"

    Examples:
      | valor                       |
      | ".email@example.com"        |
      | "@example.com"              |
      | "“email”@example.com"       |
      | "email@example@example.com" |
      | "email@example@example.com" |
      | "email@[123.123.123.123]"   |
