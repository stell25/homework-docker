FROM ubuntu:24.04

LABEL maintainer="Stella Cheng <scheng25@cmc.edu>"

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev python3-venv

# Set working directory inside the container
WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

#Install Python Dependencies
RUN python3 -m venv venv && \
    venv/bin/pip install -r requirements.txt

# Copy rest of the application files
COPY . /app

ENTRYPOINT [ "/app/venv/bin/python3" ]
CMD [ "app.py" ]

