FROM node:20
EXPOSE 8080
RUN useradd expense
RUN mkdir /opt/server
RUN chown expense:expense -R /opt/server
WORKDIR /opt/server
COPY package.json .    
COPY *.js .
RUN npm install
CMD [ "node","index.js" ]

# (.) means current dir 
 

# FROM node:20
# EXPOSE 8080
# RUN useradd expense
# RUN mkdir /app
# RUN chown expense:expense -R /app
# WORKDIR /app
# COPY package.json .    
# COPY *.js .
# RUN npm install
# CMD [ "node","index.js" ]

# # (.) means current dir 
 