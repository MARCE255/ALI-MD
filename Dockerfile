
FROM node:lts-buster

RUN git clone https://github.com/MARCE255/ALI-MD /app
WORKDIR /app
RUN npm install && npm install -g pm2
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
