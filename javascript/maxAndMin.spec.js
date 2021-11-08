const maxAndMin = require('./maxAndMin');

describe('maxAndMin()', () => {
  describe('given an numeric array without repeated values', () => {
    test('return the max and min index of the array', () => {
      expect(maxAndMin([3, 2, 1, 5, 4])).toEqual({
        max: 3,
        min: 2,
      });
    });
  });
});
