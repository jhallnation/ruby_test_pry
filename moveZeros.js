// Write an algorithm that takes an array and moves all of the zeros to the end, preserving the order of the other elements.

// moveZeros([false,1,0,1,2,0,1,3,"a"]) //returns[false,1,1,2,1,3,"a",0,0]

// codewars kata by xcthulhu

// my answer

var moveZeros = function (a) {
  for( i = a.length - 1 ; i >= 0; i--) {
      if(a[i] === 0) {
         a.splice(i, 1);
         a.push(0);
      }
  }
  return a;
};


// another option i found by others that i like

var moveZeros = function (a) {
  return a.filter(function(x) {return x !== 0}).concat(a.filter(function(x) {return x === 0;}));
}