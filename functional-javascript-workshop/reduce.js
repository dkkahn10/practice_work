function countWords(inputWords) {
  var countedStrings =  inputWords.reduce(function(allStrings, string) {
    if (string in allStrings) {
      allStrings[string]++;
    }
    else {
      allStrings[string] = 1;
    }
    return allStrings;
  }, {});
  return countedStrings;
};

module.exports = countWords;

//function countWords(arr) {
//  return arr.reduce(function(countMap, word) {
//    countMap[word] = ++countMap[word] || 1;
//    return countMap;
//  }, {});
//};

//module.exports = countWords;
