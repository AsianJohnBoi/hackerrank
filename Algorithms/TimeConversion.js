'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.trim().split('\n').map(str => str.trim());

    main();
});

function readLine() {
    return inputString[currentLine++];
}

/*
 * Complete the timeConversion function below.
 */
function timeConversion(s) {
    var str = s.split(":");
    var time = "";

    if (str[2].includes("PM") && parseInt(str[0]) != "12") {
        str[0] = parseInt(str[0]) + 12;;
    } else if (str[2].includes("AM") && str[0] == "12") {
        str[0] = "00";
    }
    time = str[0] + ":" + str[1] + ":" + str[2][0] + str[2][1];
    return time;

}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const s = readLine();

    let result = timeConversion(s);

    ws.write(result + "\n");

    ws.end();
}
