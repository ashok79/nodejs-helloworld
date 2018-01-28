FROM ubuntu:17.10
#RUN yum install -y nodejs npm
sudo apt-get install -y nodejs npm

COPY package.json /src/package.json
RUN cd /src; npm install --production

COPY . /src

EXPOSE  8080
CMD ["node", "/src/app.js"]

# $ docker build -t ashok/hello-world-nodejs .
# $ docker run -p 49160:8080 -d ashok/hello-world-nodejs