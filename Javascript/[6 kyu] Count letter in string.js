function letterCount(s) {
  
  let letters = {}
  
  for (const c of s) {
    if (!(c in letters)) letters[c] = 0
    letters[c]++
  }
  
  return letters
}