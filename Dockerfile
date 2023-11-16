# menggunakan base image node.js versi 14
FROM node:14-alpine
# working directory saat ini /app
WORKDIR /app
# salin semua package di direktori saat ini ke direktori root container
COPY package* .json ./
# menjalankan perintah menginstall Node.JS dengan clean install beserta dependesinya
RUN npm ci
# menyalin semua file di root folder saat ini ke root folder container
COPY ./*.js ./
# membuka port 3001
EXPOSE 3001
# setelah container berjalan, jalankan perintah node dari index.js
CMD ["node", "index.js"]