const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function askIfGreaterThan(el1, el2, callback){

  reader.question(`Is ${el1} greater than ${el2}? `, function (res){

    if (res === "y"){
      callback(true)
    }
    else {
      callback(false)
    }
  })
}




function absurdBubbleSort(arr, sortCompletionCallback){

};

function innerBubbleSortLoop(arr, i, madeAnySwaps, outerBubbleSortLoop){

};