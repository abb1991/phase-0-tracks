var arrOne = ["blue", "green", "red", "yellow"];
var arrTwo = ["Joe", "John", "Jim", "Jason"];

arrOne.push("orange");
arrTwo.push("Jonni");

var obj = {};

for (var i = 0; i < arrOne.length; i++) {
  obj[arrTwo[i]] = arrOne[i];
}


console.log(obj);
console.log(obj["Joe"]);


function Car(type, color, works) {

  console.log("Our new car:", this);

  this.type = type;
  this.color = color;
  this.works = works;

  this.honk = function() {
    if (works = true){
      console.log("Honk!");
    } else {
      console.log("*death rattle*")
    };
  };

  console.log("Car initialization complete");
}

var newCar = new Car("Geo metro", "blue", true);

var oldCar = new Car("Rust Bucket", "faded red", false)

console.log(newCar);
console.log(oldCar);
newCar.honk();
oldCar.honk();