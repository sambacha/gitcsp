FROM alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production

COPY . .
EXPOSE 8080

RUN check.sh


CMD [ "bash entrypoint.sh" ]

#RUN 
