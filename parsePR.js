const fs = require('fs');
const readline = require('readline')

async function extractTests(){

    //by default we specify that all tests should run
    let testsFile = __dirname+'/testsToRun.txt';
    await fs.promises.writeFile(testsFile,'all');

    // const lines = readline.createInterface({
    //     input: fs.createReadStream(__dirname+'/pr_body.txt'),
    //     crlfDelay: Infinity
    // });

    // for await (const line of lines) {
    //     //special delimeter for apex tests
    //     if(line.includes('Apex::[') && line.includes(']::Apex')){

    //         let tests = line.substring(7,line.length-7);
    //         await fs.promises.writeFile(testsFile,tests);
    //         await fs.promises.appendFile(testsFile,'\n');
    //     }
    // }
     const passed_tests = readline.createInterface({
        input: fs.createReadStream(__dirname+'/passed_test.txt'),
        crlfDelay: Infinity
    });
    for await (const line of passed_tests){
            await fs.promises.writeFile(testsFile,line);
   }
}

extractTests();
