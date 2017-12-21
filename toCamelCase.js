// Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized.

// Examples:

// // returns "theStealthWarrior"
// toCamelCase("the-stealth-warrior") 

// // returns "TheStealthWarrior"
// toCamelCase("The_Stealth_Warrior")

// codewars Kata by jhoffner

function toCamelCase(s){
  a = [];
  s = s.split(/[_ -]+/);
  s.map(function(x) { 
    if (x === s[0]) {      
      a.push(x);
    }else{
      x = x.charAt(0).toUpperCase() + x.slice(1);
      a.push(x);
    }
  });
  return a.join('');
}