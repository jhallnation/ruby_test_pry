// Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

// Examples

// pigIt('Pig latin is cool'); // igPay atinlay siay oolcay
// pigIt('Hello world !');     // elloHay orldWay !

// codewars Kata by user2505876


function pigIt(str){
  s = [];
  str.split(' ').map(function(x){
    a = [];
    for (i = 1; i < x.length; i++) { 
     a.push(x[i]);
}
   s.push(a.join('') + x[0] + 'ay');
  });
  return s.join(' ');
}