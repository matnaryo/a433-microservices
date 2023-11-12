# import node js versi 14 alpine
FROM node:14-alpine

# menentukan direktori aplikasi
WORKDIR /app

# salin semua file ke direktori saat ini (app)
COPY . .

# install file npm
RUN npm install

# deklarasi environtment yang dibutuhkan
ENV PORT=3000

# expose port 3001
EXPOSE 3000

# run npm start jika kontainer diluncurkan
CMD ["npm","start"]