// Regex Password Validation

// You need to write regex that will validate a password to make sure it meets the following criteria:

// At least six characters long
// contains a lowercase letter
// contains an uppercase letter
// contains a number
// Valid passwords will only be alphanumeric characters.

function validate(password) {
  return /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z0-9]{6,}$/.test(password);
}

// Explanation:
// (?=.*[a-z]) checks if there is at least 1 lower case
// (?=.*[A-Z]) checks if there is at least 1 upper case
// (?=.*\d) checks if there is at least one number
// [a-zA-Z0-9]{6,} checks if there are 6 or more characters
// ^ checks from the begging of the string
// $ checks at the end of the string
