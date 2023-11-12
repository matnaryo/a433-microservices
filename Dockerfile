# menggunakan base image node.js versi 14
FROM node:14-alpine
# working directory saat ini /app
WORKDIR /app
# menyalin seluruh source code ke working dir
RUN npm ci
COPY package* ./
EXPOSE 3000
# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["node", "index.js"]