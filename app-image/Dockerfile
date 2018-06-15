FROM node:carbon
COPY . /app
WORKDIR /app
RUN yarn
ENV NODE_ENV production
CMD ["node","app.js"]
EXPOSE 8080
