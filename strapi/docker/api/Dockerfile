FROM node:14

LABEL maintainer="Burak Cakmakoglu <brainbraks@googlemail.com>" \
      org.label-schema.vendor="Strapi" \
      org.label-schema.name="Strapi Docker image" \
      org.label-schema.description="Strapi containerized" \
      org.label-schema.url="https://strapi.io" \
      org.label-schema.vcs-url="https://github.com/strapi/strapi-docker" \
      org.label-schema.version=latest \
      org.label-schema.schema-version="1.0"

WORKDIR /usr/src/api

RUN wget https://github.com/libvips/libvips/releases/download/v8.10.6/vips-8.10.6.tar.gz && tar xf vips-8.10.6.tar.gz
RUN cd vips-8.10.6 && ./configure && make && make install && ldconfig && cd ..

COPY ./api/entrypoint.sh ./
RUN chmod +x ./entrypoint.sh

EXPOSE 1337

CMD ["./entrypoint.sh"]
