// Cálculo do M.D.C. pelo processo das divisões sucessivas

/**
 *
Nesse processo efetuamos várias divisões até chegar a uma divisão exata. O divisor desta divisão é o m.d.c. Acompanhe o cálculo do m.d.c.(48,30).

Regra prática:

1º) dividimos o número maior pelo número menor;
48 / 30 = 1 (com resto 18)

2º) dividimos o divisor 30, que é divisor da divisão anterior, por 18, que é o resto da divisão anterior, e assim sucessivamente;
30 / 18 = 1 (com resto 12)

18 / 12 = 1 (com resto 6)

12 / 6 = 2 (com resto zero - divisão exata)

3º) O divisor da divisão exata é 6. Então m.d.c.(48,30) = 6.
 */

function mdc(a, b) {
  if (b === 0) return a;
  return mdc(b, a % b);
}

console.log(mdc(48, 30)); // 6
