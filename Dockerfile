FROM python:3.8.5-alpine3.12

ENV PYTHONUNBUFFERD 1
# run python in unbufferd mode --> bc of the docker image

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
#copy the requirements.txt to the docker image and runs it with pip

RUN mkdir /app
#creates empty folder on the docker image
WORKDIR /app
#switches it do the default 
COPY ./app /app
#copies the app folder from the local machine to the app folder on docker

RUN adduser -D user
USER user
#for security purposes


