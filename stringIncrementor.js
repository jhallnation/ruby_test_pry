// Your job is to write a function which increments a string, to create a new string. If the string already ends with a number, the number should be incremented by 1. If the string does not end with a number the number 1 should be appended to the new string.

// Examples:

// foo -> foo1

// foobar23 -> foobar24

// foo0042 -> foo0043

// foo9 -> foo10

// foo099 -> foo100

// Attention: If the number has leading zeros the amount of digits should be considered.

// Codewar kata from parceval

function incrementString (strng) {
  s = strng.split('');
  if (isNaN(s[s.length-1]) === true){
    s.push('1');
    s = s.join('');
    return s;
  }else{ 
    s = strng.split(/(\d+)/);
    a = s[1].length;
    b = '0'.repeat(a);
    s[1] = Number(s[1]) + 1;
    c = '' + s[1];
    s[1] = b.substring(0, b.length - c.length) + c;
    s = s.join('');
    return s;
  }
}