FROM node:16.7.0

LABEL maintainer="Calvin Kodalo <ckodalo@gmail.com>"

WORKDIR /myapp/client

COPY . .

RUN npm install

CMD ["npm", "start"]

EXPOSE 3000
