// main.js
let getDataAsynchronously = (callback)  => {
  setTimeout(() => {
    let data = 1;
    if (typeof data === 'number' && !isNaN(data)) {
      callback(data, null);
    } else {
      let error = new Error('data is not a number');
      callback(null, error);
    }
  }, 100);
};

let divideFiveByNumber = (number, callback)  => {
  if (number !== 0) {
    let result =  5 / number;
    callback(result, null);
  } else {
    let error = new Error('cannot divide by zero');
    callback(null, error);
  }
};

let reportResult = result => console.log('Result:', result);
let reportError = error => console.error('Error:', error.message);

getDataAsynchronously((result, error) => {
  if (error) {
    reportError(error);
    return;
  }

  divideFiveByNumber(result, (result, error) => {
    if (error) {
      reportError(error);
      return;
    }

    reportResult(result);
  });
});
console.log('Run before asynchronous function finishes executing');
