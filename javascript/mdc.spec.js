const mdc = require('./mdc');

describe('mdc()', () => {
  describe('when passing two numbers', () => {
    test('return the greatest common divisor', () => {
      expect(mdc(12, 18)).toEqual(6);
      expect(mdc(12, 24)).toEqual(12);
    });
  });
});
