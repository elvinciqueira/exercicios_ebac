Feature: Calculadora

  Como não sei fazer conta de cabeça
  Quero usar a calculadora do sistema
  Para obter os resultados corretos

  Scenario: Soma de dois números
    Given que acesse a calculadora
    When somar 2 + 2
    Then o resultado da soma deve ser 4

  Scenario Outline: Soma de 2 números com tabela
    Given que eu acesse a calculadora
    When eu somar o <valor1> com <valor2>
    Then o resultado deve ser <total>

    Examples:
      | valor1 | valor2 | total |
      | 5      | 5      | 10    |
      | -8     | 10     | 2     |
      | 10     | 10     | 20    |
      | 10     | -10    | 0     |
      | -10    | -10    | -20   |
      | 2      | 3      | 5     |
      | 2      | -3     | -5    |
      | 6      | 5      | 11    |
      | -6     | -5     | -11   |
      | 800    | 150    | 950   |
      | -800   | -150   | -950  |
      | 999    | 1      | 1000  |
      | 7      | 3      | 10    |
      | -7     | -3     | -10   |
      | 7      | -10    | -3    |
      | -7     | 10     | 3     |
      | -7     | -10    | -17   |
      | 7      | 10     | 17    |
      | 9      | -10    | -1    |
      | -9     | 10     | 1     |
      | 500    | 250    | 750   |
