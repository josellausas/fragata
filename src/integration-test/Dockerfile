FROM alpine
RUN apk add --update lua5.2 lua5.2-dev luarocks alpine-sdk
RUN luarocks-5.2 install moonscript
RUN luarocks-5.2 install busted
COPY . .
EXPOSE 8080
#ENTRYPOINT ["busted"]
CMD ["busted", "main_spec.moon"]
