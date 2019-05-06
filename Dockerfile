FROM node:latest
COPY . /workdir
WORKDIR /workdir
RUN npm install --production
EXPOSE 8080
CMD [ "npm", "start"]