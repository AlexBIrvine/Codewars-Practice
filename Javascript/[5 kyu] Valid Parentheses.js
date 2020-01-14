// Write a function called that takes a string of parentheses, and determines if the order of the parentheses is valid. 
// The function should return true if the string is valid, and false if it's invalid.

// Examples
// "()"              =>  true
// ")(()))"          =>  false
// "("               =>  false
// "(())((()())())"  =>  true

function validParentheses(parens){
  let counter = 0;
  
  for (const paren of parens) {
    if (paren === '(') counter++;
    if (paren === ')') counter--;
    if (counter < 0) return false;
  }
  
  return counter === 0;
}
