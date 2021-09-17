function findUniq(arr) {

  let numbers = {}

  arr.forEach(num => {
    if ( !(num in numbers) ) numbers[num] = 0
      numbers[num] += 1 
    })

  return (Object.keys(numbers).find(key => numbers[key] === 1)) * 1
  }
