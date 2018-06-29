let lista = [1, 2, 3];
console.log(lista.length);  // 3
lista.push(4);
lista.push(6);
lista.pop();
console.log(lista)  // [ 1, 2, 3, 4 ]

let objetos = { "One": 1, bool: false }

console.log(objetos["One"]);    // 1
console.log(objetos.bool);      // false
console.log(objetos.algo);      // undefined

delete objetos["One"];
console.log(objetos);           // { bool: false }
console.log("bool" in objetos); // true
