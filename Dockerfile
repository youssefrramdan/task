FROM alpine

WORKDIR /app

COPY t.cpp .

RUN apk update && \
    apk upgrade && \
    apk add --no-cache g++ make

RUN g++ -o ah t.cpp

CMD ["./ah"]