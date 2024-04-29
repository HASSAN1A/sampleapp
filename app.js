// Importing required module 'http'
const http = require("http");

// Creating a server object
const server = http.createServer((req, res) => {
  // Setting response header
  res.writeHead(200, { "Content-Type": "text/plain" });

  // Sending the response
  res.end("Hello, World!\n");
});

// Listening on port 3000
server.listen(3001, () => {
  console.log("Server is running on http://localhost:3001");
});
