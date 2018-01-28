FROM ubuntu:17.10
#RUN apt-get install --yes curl

RUN curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -

RUN apt-get install --yes nodejs

RUN apt-get install --yes build-essential

COPY . /src

EXPOSE  8080
CMD ["node", "/src/app.js"]

# $ docker build -t ashok/hello-world-nodejs .
# $ docker run -p 49160:8080 -d ashok/hello-world-nodejs
# $ git fetch --all
# $ git reset --hard origin/master