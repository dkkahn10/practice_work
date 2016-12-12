function repeat(operation, num) {
  for(var i = num; i > 0; i--) {
    return operation;
  }
}

module.exports = repeat;

// function repeat(operation, num) {
//  if (num <= 0) return
//  operation()
//  return repeat(operation, --num)
// }

// module.exports = repeat;
