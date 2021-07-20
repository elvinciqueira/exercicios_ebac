Feature: Configurar produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Background:
    Given que eu estou na página de configuração do produto

  Scenario Outline: Seleções de cor, tamanho e quantidade devem ser obrigatórios
    When eu escolho a <cor> de um produto
    But eu não escolho nenhuma <quantidade>
    And eu não escolho nenhum <tamanho>
    Then deve exibir uma mensagem avisando "As opções são obrigatórias"

  Scenario: Deve permitir apenas 10 produtos por venda
    When eu adicionar 11 produtos ao carrinho
    Then deve exibir uma mensagem avisando "Só é permitido adicionar 10 produtos por venda"

  Scenario: Quando eu clicar no botão “limpar” deve voltar ao estado original
    When eu clico no botão "Limpar"
    Then deve limpar todos os campos escolhidos

    Examples:
      | cor      | tamanho | quantidade |
      | branco   | xs      | 2          |
      | azul     | xl      | 1          |
      | laranja  | s       | 4          |
      | preto    | m       | 5          |
      | vermelho | l       | 2          |
