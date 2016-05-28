// pseudocode
// Construct method that takes an array of words and return the phrase with the greatest number of characters.
// Iterate through the array, calling the .length method on each item so the function's return is the integer for how many characters are in the array. Create an if statement that checks wether or not the length of a phrase is greater than less than or equal to the previous longest phrase, which would be stored in a variable inside the if statement (with a defaul value of 0). If it's greater, than the variable's value is changed to the new greatest integer and phrase is stored in another variable as the longest phrase. Once the entire array has been iterated through, the function returns the values of the integer and the longest phrase.

// business logic

function length_checker(str){
  var longest_phrase_i = 0;
  for (var i = 0; i < str.length; i++){
    var str_length = (str[i].length);
    if (str_length > longest_phrase_i) {
      longest_phrase_i = str_length;
      longest_phrase_str = str[i];
    }
  }
  console.log(longest_phrase_i);
  console.log(longest_phrase_str);
}

// driver code
var arr = ["short", "longer","I am by far the longest phrase", "longest", "even longer"];
length_checker(arr);


