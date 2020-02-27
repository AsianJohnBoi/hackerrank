'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.replace(/\s*$/, '')
        .split('\n')
        .map(str => str.replace(/\s*$/, ''));

    main();
});

function readLine() {
    return inputString[currentLine++];
}

// Complete the miniMaxSum function below.
function miniMaxSum(arr) {

    var min;
    var max;

    for (var i = 0; i < arr.length; i++) {
        var c = 0;
        
        for (var j=0; j < arr.length; j++) {
            if (j != i) {
                c += arr[j];
            }
        }
        if ( min == undefined && max == undefined) {
            min = c;
            max = c;
        }

        if (c <= min) {
            min = c;
        } else if (c >= max) {
            max = c;
        }
    }

    console.log(min, max);

}

function main() {
    const arr = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));

    miniMaxSum(arr);
}
