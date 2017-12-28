// ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

// Create a function that takes a string and returns the string ciphered with Rot13. If there are numbers or special characters included in the string, they should be returned as they are. Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".

// Please note that using "encode" in Python is considered cheating.
// string may contain special characters and numbers
// codewars kata by Rubikan

function rot13(message){
  answer = [];
  regex = new RegExp(/[^\w\s]/gi);
  alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('');
  message.toLowerCase().split('').map(function(x) { 
    isNaN(Number(x)) === false || regex.test(x) === true ? answer.push(x):
    alphabet.map(function(y,i){
      if (x === y) {
        z = i + 13;
        z > 25 ? answer.push(alphabet[z - 26]) : answer.push(alphabet[z]);
      }
    });
  });
  answer.map(function(a, i){
    if (message[i] === message[i].toUpperCase()){
      answer.splice(i, 1, a.toUpperCase());
    }
  });
  return answer.join('');
}