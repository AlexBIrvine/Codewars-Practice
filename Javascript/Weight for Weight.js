// orderWeight("2000 10003 1234000 44444444 9999 11 11 22 123")

function orderWeight(string) {
  let orderObj = { ...string.split(' ') };

  for ([index, weight] of Object.entries(orderObj)) {
    const newWeight = weight
      .split('')
      .map(Number)
      .reduce((a, b) => a + b, 0);
    orderObj[index] = newWeight;
  }

  console.log(orderObj);
}

orderWeight('103 123 4444 99 2000');
