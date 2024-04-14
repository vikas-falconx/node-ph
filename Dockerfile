FROM --platform=linux/amd64 amd64/node:latest
RUN mkdir -p /home/node/app/node_modules
RUN chown -R node:node /home/node/app
WORKDIR /homde/node/app
COPY . .
RUN npm ci
ARG PORT
EXPOSE ${PORT}
CMD ["npm", "start" ]
