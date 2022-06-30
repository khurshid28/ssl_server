const https = require("https")
const  fs = require("fs");
const express=require("express")
const options = {
  key: fs.readFileSync("./cert/key.pem"),
  cert: fs.readFileSync("./cert/cert.pem")
};

const app = express();

app.get("/",(req, res) => {
  res.send(`server is at ${req.protocol}`,);
});

app.listen(8000,()=>console.log("express server is at 8000"));

https.createServer(options, app).listen(8080,()=>{
    console.log("ssl server is at 8080")
});