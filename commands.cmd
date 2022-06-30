start chrome https://www.filehorse.com/download-openssl-64/download/

mkdir server 

cd server 

git clone https://github.com/khurshid28/ssl_server.git

cd ssl_server

rmdir cert

mkdir cert

cd cert 

openssl  genrsa -out key.pem 

openssl req -new -key key.pem -out csr.pem 

openssl x509 -req -days 9999 -in csr.pem -signkey key.pem -out cert.pem

cd ..

npm i --save


"server/ssl_server/app.js"


