const multipleOf3and5 = require('./multipleOf3and5');

describe('multipleOf3and5()', () => {
  describe('when we list all the natural numbers below 10 that are multiples of 3 or 5 we get 3, 5, 6 and 9.', () => {
    test('the sum of these multiples is 23.', () => {
      expect(multipleOf3and5(10)).toBe(23);
    });
  });
});
