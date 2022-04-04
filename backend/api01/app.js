// Dependencies
const fs = require('fs');
const http = require('http');
const https = require('https');
const express = require('express');

const app = express();

// Certificate
const privateKey = fs.readFileSync('./certs/server-noenc.key', 'utf8');
const certificate = fs.readFileSync('./certs/server-noenc.crt', 'utf8');

const credentials = {
	key: privateKey,
	cert: certificate,
};

app.use((req, res) => {
	res.send('Hello there !');
});

// Starting both http & https servers
const httpServer = http.createServer(app);
const httpsServer = https.createServer(credentials, app);

httpServer.listen(8080, () => {
	console.log('HTTP Server running on port 8080');
});

httpsServer.listen(4443, () => {
	console.log('HTTPS Server running on port 4443');
});