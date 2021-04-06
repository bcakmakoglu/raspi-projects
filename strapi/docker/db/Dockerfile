#
# MongoDB Dockerfile
#
# https://github.com/dockerfile/mongodb
#

# Pull base image.
FROM balenalib/rpi-raspbian

# Define working directory.
WORKDIR /data

RUN apt update && apt upgrade
RUN apt install mongodb

COPY ./db/entrypoint.sh ./
RUN chmod +x ./entrypoint.sh

# Define default command.
CMD ["./entrypoint.sh"]

# Expose ports.
#   - 27017: process
#   - 28017: http
EXPOSE 27017
EXPOSE 28017
