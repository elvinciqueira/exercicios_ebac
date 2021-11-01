function mdc(a, b) {
  if (b === 0) return a;
  return mdc(b, a % b);
}

console.log(mdc(20, 24)); // 4
console.log(mdc(6, 18)); // 6
console.log(mdc(9, 12)); // 3
