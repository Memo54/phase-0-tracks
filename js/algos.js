/*
-Make an array and creat a loop from index
-At the loop it asks if the string length is longest then stored variable in if/else and if longer replace.
-stored variable starts at 0
*/

function longest(array){
  // var run_logic = array;
  var long = '';
for (var i = 0; i < array.length; i++){
  if (array[i].length > long.length){
    long = array[i];
  }
} return long;
}


//takes two the object value's and store into 2 variables
// there should be an if/else statement, if the 2 variables at value are equal then puts true else statement is false
var Ferrari = {name: "Ferrari", year: 2006};
var Enzo = {name: "Enzo", year: 2006};

function are_they_same(object_1, object_2) {

if ((object_1[0] == object_2[0])||(object_1[1] == object_2[1])){
  return console.log("true");
}else{
  return console.log("false");
}
}

/*
-function takes 1 variable of numbers. input an interger as a variable. make a variable in function of the alphabet.
-make a loop of the variable of the number. make a variable of an array that is the lenght of the initial input.
-in each part of the loop there is a new variable of string with randomly determinded lenght of 1-10.
-random string is maybe initially initialized with ' ' and then is replaced with random characters in a variable of the alphabet.
*/

function randomword(){
  var word = '';
  for (var i = 0; i < (Math.floor(Math.random()*10)+1); i++){
  var alphabet = ('abcdefghijklmnopqrstuvwxyz'[Math.floor(Math.random()*25)]);
  word += alphabet;
}
return word;
}
function array(x){
  var array = [];
  for (var i = 0; i < x ; i ++){
  array.push(randomword());
}
return array;
}

// Driver Code
console.log(longest(["long phrase", "longer phrase", "longest phrase"]))
are_they_same(Ferrari, Enzo);
console.log(randomword());
console.log(array(7));
var proof = array(10);
console.log(proof);
console.log(longest(proof));