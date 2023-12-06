FROM node:latest

WORKDIR /pz-rkd

COPY . .

RUN npm i && npm run build
RUN npm i -g server

CMD [ "serve", "-s", "build" ]