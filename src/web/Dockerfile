FROM alpine
RUN apk add --update lua5.2 lua5.2-dev luarocks alpine-sdk
RUN luarocks-5.2 install moonscript
COPY . .
EXPOSE 8080
ENTRYPOINT ["moon", "./main.moon"]

