// pseudocode
// Construct method that takes an array of words and return the phrase with the greatest number of characters.
// Iterate through the array, calling the .length method on each item so the function's return is the integer for how many characters are in the array. Create an if statement that checks wether or not the length of a phrase is greater than less than or equal to the previous longest phrase, which would be stored in a variable inside the if statement (with a defaul value of 0). If it's greater, than the variable's value is changed to the new greatest integer and phrase is stored in another variable as the longest phrase. Once the entire array has been iterated through, the function returns the values of the integer and the longest phrase.

// business logic

// function longestStr(str){
//   var longestPhraseI = 0;
//   for (var i = 0; i < str.length; i++){
//     var strLength = (str[i].length);
//     if (strLength > longestPhraseI) {
//       longestPhraseI = strLength;
//       longestPhraseStr = str[i];
//     }
//   }
//   console.log(longestPhraseI);
//   console.log(longestPhraseStr);
// }

// function keyValue(objLitOne, objLitTwo) {
//   var keyArrOne = Object.keys(objLitOne);
//   var keyArrTwo = Object.keys(objLitTwo);

//   for (var i = 0; i < keyArrOne.length; i++){
//     if (keyArrTwo.indexOf(keyArrOne[i]) > -1){
//       console.log(keyArrOne[i]);
//       console.log("true");
//     } else {
//       console.log("false");
//     };
//   };

//   for (var keyArrOne in objLitOne) {
//     var value = objLitOne[keyArrOne];
//     for (var keyArrTwo in objLitTwo){
//       if (value === objLitTwo[keyArrTwo]) {
//         console.log(objLitTwo[keyArrTwo]);
//         console.log("true");
//       } else {
//         console.log("false");
//       };
//     };
//   }

  // for (var i = 0; i < keyArrOne.length; i++) {
  //     var newKey = keyArrOne[i];
  //   // console.log(objLitTwo.keyArrTwo[i]);
  // }
// };

// pseudocode

// create a fucntion that generates a random number. That number represents the number of strings in the array. The next random number generated represents the number of words in a given array. The next number the number of letter in the word, and the next number the letter in the alphabet.

function randomString() {
  var numRand = Math.floor(Math.random() * 11);
  var randArr = [] * numRand
  console.log(randArr)
}


// driver code

// var arr = ["short", "longer","I am by far the longest phrase", "longest", "even longer"];
// longestStr(arr);

// objLitOne = {
//   lives: "office",
//   ears: 2,
//   name: "Maya"
// } ;

// objLitTwo = {
//   "name": "Alex",
//   place: "home",
//   feet: 2
// } ;

// keyValue(objLitOne, objLitTwo) ;

// var randomNumberBetween0and19 = Math.floor(Math.random() * 20);

// console.log(randomNumberBetween0and19)

randomString()


