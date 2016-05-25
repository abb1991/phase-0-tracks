// def a var string.
// construct a for loop for the variable string. The for loop should iterate through the string and return each letter from the end of the string to a new variable array, newVar, that concatenates the strings together into the backwards form of the string (using .join("").
// Then print, console.log, varBackwards.

var varForward = "hello";
var newVar = [];

for (var i = varForward.length - 1; i >= 0; i--) {
  newVar.push(varForward[i]);
}

if (1==1) {
  console.log(newVar.join(""));
}


// I couldn't figure out how to store the results of the for loop in a new variable without using an array. I kept trying to use the .concat function, but I could never get it work properly. I'm still a little unclear about how to capture the return of the loop apart from printing from it, or using return. But neither way gave me any ability to manipulate the output outside of the loop.