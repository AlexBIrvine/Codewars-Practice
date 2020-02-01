// My friend John and I are members of the "Fat to Fit Club (FFC)".
// John is worried because each month a list with the weights of members is published and each month he is the last on the list which means he is the heaviest.

// I am the one who establishes the list so I told him: "Don't worry any more, I will modify the order of the list".
//It was decided to attribute a "weight" to numbers. The weight of a number will be from now on the sum of its digits.

//For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99.
//Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?

function orderWeight(string) {
  let orderArr = string.split(" ");
  let orderObj = { ...orderArr };
  let returnArr = [];

  for ([index, weight] of Object.entries(orderObj)) {
    const newWeight = weight
      .split("")
      .map(Number)
      .reduce((a, b) => a + b, 0);
    orderObj[index] = newWeight;
  }

  while (!(Object.entries(orderObj).length === 0 && orderObj.constructor === Object)) {
    let lowest = Infinity;
    for (sum of Object.values(orderObj)) {
      if (sum < lowest) lowest = sum;
    }
    const key = Object.keys(orderObj).find(key => orderObj[key] === lowest);
    returnArr.push(key);
    delete orderObj[key];
  }

  for (let i = 0; i < returnArr.length; i++) {
    returnArr[i] = orderArr[returnArr[i]];
  }

  return returnArr.join(" ");
}
