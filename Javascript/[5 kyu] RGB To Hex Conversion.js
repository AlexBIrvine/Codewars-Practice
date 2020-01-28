// The rgb() method is incomplete.
// Complete the method so that passing in RGB decimal values will result in a hexadecimal representation being returned.
// The valid decimal values for RGB are 0 - 255.
// Any (r,g,b) argument values that fall out of that range should be rounded to the closest valid value.

function rgb(r, g, b) {
  let returnArray = ['', '', ''];

  for (let i = 0; i < arguments.length; i++) {
    if (arguments[i] <= 0) returnArray[i] = '00';
    else if (arguments[i] > 255) returnArray[i] = 'FF';
    else returnArray[i] = ('0' + arguments[i].toString(16).toUpperCase()).slice(-2);
  }

  return returnArray.join('');
}
