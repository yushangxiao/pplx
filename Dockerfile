FROM node:21-alpine  
WORKDIR /app
COPY package*.json ./

RUN npm install && npm install -g pm2 && \
    rm -rf /var/lib/apt/lists/*  
COPY . .
CMD ["pm2-runtime", "index.js"]
