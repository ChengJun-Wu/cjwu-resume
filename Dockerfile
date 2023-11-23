FROM apline as builder

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk add nodejs npm nginx

WORKDIR /app
COPY . .

WORKDIR /app/cjwu-resume

RUN npm config set registry http://registry.npm.taobao.org/ \
    && npm install \
    && npm run build

EXPOSE 80

CMD ["nginx"]
