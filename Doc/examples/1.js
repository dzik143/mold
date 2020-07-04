const x = [1, 2, 3]
const y = [7, 8, 9]
let   z = [...x, 4, 5, 6, ...y]

console.log(z)


const a = {one: 1, two: 2}
const b = {three: 3, four: 4}

const c = {...a, ...b}

console.log(c)

x =