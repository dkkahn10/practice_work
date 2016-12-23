let getDataAsynchronously = ()  => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      let data = 1;
      if (typeof data === 'number' && !isNaN(data)) {
        resolve(data);
      } else {
        let error = new Error('data is not a number');
        reject(error);
      }
    }, 1000);
  });
};

let divideFiveByNumber = (number, callback)  => {
  if (number !== 0) {
    let result =  5 / number;
    return result;
  } else {
    let error = new Error('cannot divide by zero');
    throw(error);
  }
};

let reportResult = result => console.log('Result:', result);
let reportError = error => console.error('Error:', error.message);

let promiseOne = getDataAsynchronously();
let promiseTwo = promiseOne.then(divideFiveByNumber);
let promiseThree = promiseTwo.then(reportResult);
promiseThree.catch(reportError);
console.log('Run before asynchronous function finishes executing');
