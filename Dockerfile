FROM mhart/alpine-node:6

RUN mkdir -p /usr/src/service
WORKDIR /usr/src/service

COPY package.json /usr/src/service/
RUN npm install

COPY . /usr/src/service

RUN npm test

EXPOSE 8000

CMD ["node", "build/src/index.js"]