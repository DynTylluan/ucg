let r = require('readline');let l = r.createInterface({input: process.stdin,output: process.stdout});console.log("You are dying. 1=live");l.question('Enter 1 to live: ', (a) => {console.log(`You ${a.trim() === '1' ? 'won' : 'died'}`);l.close();});