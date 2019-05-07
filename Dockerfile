FROM node:latest
COPY . /workdir
WORKDIR /workdir
RUN npm install --production
EXPOSE 3000
CMD [ "npm",  "run", "start:prod"]