/**
 * Listando todos os números inteiros abaixo de 10 que são múltiplos de 3 ou 5, ficamos com 3, 5,
6 e 9. A soma desses múltiplos é 23. Crie uma função que retorne a soma de todos os
múltiplos de 5 ou 7 abaixo de 1000.
 */
function multipleOf3and5(number) {
  let sum = 0;
  for (let i = 0; i < number; i++) {
    if (i % 3 === 0 || i % 5 === 0) {
      sum += i;
    }
  }
  return sum;
}

module.exports = multipleOf3and5;
