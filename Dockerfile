# menggunakan base image node.js versi 14
FROM node:14-alpine
# working directory saat ini /app
WORKDIR /app
COPY package* ./
RUN npm ci
COPY ./*.js ./
EXPOSE 3000
CMD ["node", "index.js"]