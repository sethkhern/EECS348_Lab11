FROM php:7.4-apache
COPY . /var/www/html/
Expose 80

FROM gcc:latest
COPY lab11.c
RUN gcc -o main lab11.c
CMD ["./main"]