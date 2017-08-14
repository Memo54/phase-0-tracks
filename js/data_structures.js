//Working with arrays
var colors = ["blue", "orange", "purple", "red"];
var names = ["Leonardo", "Michaelangelo", "Donatello", "Raphael"];

colors.push("black");
names.push("Donatello");

console.log(colors);
console.log(names);

// Building an object
var horses = {};
for (var i = 0; i < names.length; i++) {
  for (var j = 0; j < colors.length; j++) {
    horses[names[i]] = colors[i];
  }

}
console.log(horses);

//Build Many Objects Using a Constructor
function Car(name, color, model, year) {
  this.name = name;
  this.color = color;
  this.model = model;
  this.year = year;
  console.log("Car initialized");
}

var aCar = new Car("Mustang", "blue", "Shelby Cobra", 1967)
var bCar = new Car("Chevy", "bumble bee yellow", "Camero", 1969)
var cCar = new Car("Pontiac", "ice blue pearl", "GTO", 1968)

console.log(aCar);
console.log(bCar);
console.log(cCar);
