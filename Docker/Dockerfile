FROM node:18-alpine

# تثبيت الأدوات اللي كانت ناقصة
RUN npm install -g firebase-tools

WORKDIR /app

# نسخ ملفات الـ package أولاً لضمان الـ caching
COPY package*.json ./

# تثبيت الـ dependencies
RUN npm install

# نسخ "كل" الملفات (بما فيها firebase.json اللي جنبه)
COPY . .

# تأكد إن البورت 3000 مفتوح
EXPOSE 3000

# أمر التشغيل
CMD ["npm", "start"]