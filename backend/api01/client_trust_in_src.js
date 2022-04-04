const https = require('https');
const fs = require('fs');
const axios = require('axios');
const url = 'https://backend-api01:4443';
let caCrt = '';
try {
    caCrt = fs.readFileSync('./certs/backend-api01.pem')
} catch(err) {
    console.log('Make sure that the CA cert file is named ca.crt', err);
}
const httpsAgent = new https.Agent({ ca: caCrt, keepAlive: false });
const sendGetReq = (params) => {
    axios.get(url, { 
        params: params,
        httpsAgent: httpsAgent
    })
    .then( res => {
        console.log(Date());
        console.log('statusCode', res.status);
        console.log('Response', res.data);
    }).catch( error => console.log(`${Date()} fail: ${url}: ${error}`)); 
};

sendGetReq()