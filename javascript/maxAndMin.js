// Dado um array numérico qualquer sem valores repetidos, descubra qual é o índice do maior valor e o índice do menor valor.
// Exemplo: [1, 2, 3, 4, 5] => [4, 0]
function maxAndMin(array) {
  let max = array[0];
  let min = array[0];
  let maxIndex = 0;
  let minIndex = 0;
  for (let i = 0; i < array.length; i++) {
    if (array[i] > max) {
      max = array[i];
      maxIndex = i;
    }
    if (array[i] < min) {
      min = array[i];
      minIndex = i;
    }
  }
  return {
    max: maxIndex,
    min: minIndex,
  };
}

module.exports = maxAndMin;
