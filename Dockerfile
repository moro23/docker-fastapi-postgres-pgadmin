# Dockerfile 

# lets pull the official docker image
FROM python:3.11.1-slim 

## lets set our env variables
ENV PYTHONDONTWRITEBYTECODE 1 
ENV PYTHONUNBUFFERED 1 

## lets set up our work directory
WORKDIR /code


## lets install dependencies
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

## lets copy project 
COPY . /code/