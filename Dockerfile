FROM node:18-alpine
WORKDIR /usr/src/app
RUN npm install -g create-next-app

COPY setup.sh /setup.sh
RUN chmod +x /setup.sh

CMD ["/setup.sh"]