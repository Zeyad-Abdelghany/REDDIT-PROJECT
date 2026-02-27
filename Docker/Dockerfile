FROM node:18  # أو الإصدار اللي بتستخدمه

WORKDIR /app

# الخطوة السحرية: تسطيب firebase tools جوه الصورة نفسها
RUN npm install -g firebase-tools

COPY package*.json ./
RUN npm install

COPY . .

# لو بتستخدم TypeScript لازم تعمل build
RUN npm run build 

EXPOSE 3000

# أمر التشغيل
CMD ["npm", "start"]