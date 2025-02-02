FROM node:16
WORKDIR /usr/src/app
COPY . .
RUN npm install --include=dev
RUN npm run build
USER node
CMD npm run start
