FROM node:20-alpine3.21 as builder
WORKDIR /opt/server
COPY package.json .
COPY *.js .
RUN npm install

FROM node:20-alpine3.21
RUN add group -S roboshop && adduser -S roboshop -G roboshop
ENV REDIS_URL="redis://redis:6379" \
     MONGO_URL="mongodb://mongodb:27017/catalogue"\
     MONGO = "true"
WORKDIR /opt/server
USER roboshop
COPY --from=builder /opt/server /opt/server
CMD ["node", "server.js"]







# FROM node:20
# WORKDIR /opt/server
# ENV MONGO="true" 
# ENV REDIS_URL="redis://redis:6379"
# ENV MONGO_URL="mongodb://mongodb:27017/catalogue" 
# COPY package.json .
# COPY *.js .
# RUN npm install 
# CMD ["node", "server.js"]