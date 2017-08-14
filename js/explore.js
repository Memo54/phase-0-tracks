/*
-get string as a variable
-reverse characters
-loop each letter in reverse
-new letters, reverse word
*/

function reverse(new_word) {
  var string = new_word;
  var length = string.length;
  var reversed = "";
  for (var i = length; i > 0; i-=1){(reversed += string[i-1]);}
    return reversed
}

// // drivercode
var hello = (reverse("Hello"));
// var Guillermo = (reverse("Guillermo"));

if (1 == 1) {
  console.log(hello);
}else{
  console.log("Oh, oh spagetiohs!!!");}