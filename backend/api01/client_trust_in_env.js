const https = require('https');
const axios = require('axios');
const fs = require('fs');


const trustedCa = [
    './certs/backend-api01.pem',
];

https.globalAgent.options.ca = [];
for (const ca of trustedCa) {
    https.globalAgent.options.ca.push(fs.readFileSync(ca));
}

axios.get('https://backend-api01:4443').then(resp => {

    console.log(resp.data);
});