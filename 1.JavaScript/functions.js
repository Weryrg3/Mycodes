// ##########################################################
//      Função                  #############################

const soma = function (x, y) { return x + y; };
console.log(soma(1, 2));                // 3

function soma1(x, y) { return x + y; };
console.log(soma1(1, 3));               // 4

const soma2 = (x, y) => { return x + y };
console.log(soma2(1, 4));               // 5

const num = x => { return x };          // Não necessita de parentes 1 valor
console.log(num(6));                    //1

const nothing = () => { return 7 };
console.log(nothing());                 // 7

function mult(num1) { return num2 => num1 * num2 };
let num1 = mult(2);
console.log(num1(4));                   // 8

function round(base, expoente = 2) {
    let result = 1;
    for (let count = 0; count < expoente; count++) {
        result *= base;
    }
    return result;
}

console.log(round(4));                   // 16
console.log(round(4, 4));                // 256

function maior(...numbers) {    // aceita diversos valores
    let resultado = -Infinity;
    for (let number of numbers) {
        if (number > resultado) resultado = number;
    }
    return resultado;
}
let numbers = [4, 1, 3, -2, 9];
console.log(maior(4, 1, 3, -2, 10));    // 10
console.log(maior(...numbers));         // 9
console.log(maior(11, ...numbers, 2));  // 11