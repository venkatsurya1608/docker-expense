FROM node:20.15.0-alpine3.19
EXPOSE 8080
ENV DB_HOST=mysql
# adduser in alpine
RUN addgroup -S expense && adduser -S expense -G expense   
RUN mkdir /opt/server
RUN chown expense:expense -R /opt/server
WORKDIR /opt/server
COPY package.json .    
COPY *.js .
RUN npm install
USER expense
CMD [ "node","index.js" ]



# FROM node:20
# EXPOSE 8080
# ENV DB_HOST=mysql
# RUN useradd expense
# RUN mkdir /opt/server
# RUN chown expense:expense -R /opt/server
# WORKDIR /opt/server
# COPY package.json .    
# COPY *.js .
# RUN npm install
# CMD [ "node","index.js" ]

# (.) means current dir 
 