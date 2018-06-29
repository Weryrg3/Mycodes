typeof 4;      // number
typeof 4.5;    // number
typeof "a";    // string

true && false;         // false
true || false;         // true
false ? 1 : 2;         // 2
true ? 1 : 2;          // 1
null == undefined;     // true
1 || 2;                // 1
1 && 2;                // 2
1 == 1 && 1.0 === 1.0; // true

var a = 1;           // Variável universal 
let b = 2;           // Variável local 
const c = 3;         // Constante
var name = "Wesley"; // Variável universal 

name + " is cool";     // Wesley is cool
Math.max(4, 2);        // 4
Math.min(4, 2, 3, 1);  // 1

Number("10.0");     // 10
Number("10");       // 10
String(20);         // '20'
Boolean(1);         // true

isFinite(Infinity);    // false
!isNaN(10);            // true

// ##########################################################
//      Condição                #############################

if (a === 1) { "Verdade" };    // Verdade
if (b === 2) "Verdade 2";      // Verdade 2
if (3 === "3") "Verdade 3";
// Sempre usar 3 = para comparação precisa ===
if (false) {
    console.log("if");
} else if (true) {
    // console.log("Else");     // Else
}

switch (a) {
    case 2:
        console.log(2);
        break;
    case 1:
        // console.log("É " + 1);  // É 1
        break;
    default:
        console.log("nenhum");
        break;
}

// ##########################################################
//      Loops                   #############################

while (b <= 4) {
    // console.log(b); // 2 3 4
    b += 1;
}

do { true } while (false);

for (let n = 0; n <= 2; n += 1) {
    // console.log(n);      // 0 1 2
}

// ##########################################################

/* comentários 
de mais de 
uma linha */

`${name} = ${a} ${b} ${c}`; // Wesley = 1 5 3


// ##########################################################
//      Função                  #############################

const soma = function (x, y) { return x + y; };
soma(1, 2);     // 3

function soma1(x, y) { return x + y; };
soma1(1, 2);     // 3

const soma2 = (x, y) => { return x + y };
soma2(1, 2);     // 3

const num = x => { return x }; // Não necessita de parentes 1 valor
num(1); //1

const nothing = () => { return 10 };
nothing(); // 10

