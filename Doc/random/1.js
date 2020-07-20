// https://math.stackexchange.com/questions/2115756/linear-congruential-generator-for-nkth-can-also-be-computed-with-nth-term
const a = 1664525
const c = 1013904223
const m = 0x80000000

function rand(x, k) {
  const ak = Math.pow(a, k)
  const ck = (ak - 1) / (a - 1) * c

  return (ak * x + ck) % m
}

let x0 = rand(0  , 1);
let x1 = rand(x0 , 1);
let x2 = rand(x1 , 1);
let x3 = rand(x2 , 1);

let y0 = x0;
let y1 = rand(x0 , 1);
let y2 = rand(x0 , 2);
let y3 = rand(x0 , 3);


console.log(x0, x1, x2, x3);
console.log(y0, y1, y2, y3);



/*
  unsigned int r0 = 0;
  unsigned int r1 = 1;
  unsigned int r2 = 2;
  unsigned int r3 = 3;

  for (int i = 0; i < 1000000; i++)
  {
    r0 = rand(r0);
    r1 = rand(r1);
    r2 = rand(r2);
    r3 = rand(r3);

    printf("%u %u\n %u %u\n", r0, r1, r2, r3);
  }
*/
