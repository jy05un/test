FROM node:latest

COPY . /app
WORKDIR /app

ENV gmail DELETE
ENV gmail_password DELETE
ENV admin_id DELETE
ENV admin_pw DELETE
ENV SECRET_KEY DELETE
ENV FLAG DELETE
ENV PORT 3000

RUN apt-get update
RUN apt-get upgrade -y 
RUN apt-get install -y fonts-liberation gconf-service libappindicator1 libasound2 libatk1.0-0 libcairo2 libcups2 libfontconfig1 libgbm-dev libgdk-pixbuf2.0-0 libgtk-3-0 libicu-dev libjpeg-dev libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libpng-dev libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 xdg-utils

RUN chmod u+r+x /app/entrypoint.sh
ENTRYPOINT /app/entrypoint.sh
 
EXPOSE 3000