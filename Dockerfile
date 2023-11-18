# menggunakan base image node.js versi 14
FROM node:14-alpine
# working directory saat ini /app
WORKDIR /app
# salin semua package di direktori saat ini ke direktori root container
COPY . .
# menjalankan perintah menginstall Node.JS beserta dependesinya
RUN npm install
# membuka port 3001
EXPOSE 3001
# setelah container berjalan, jalankan perintah node dari index.js
CMD ["node", "index.js"]