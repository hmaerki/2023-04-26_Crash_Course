FROM python:3

# FROM debian

# RUN apt-get update -y && \
#     apt-get install -y python3-pip python-is-python3 procps

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt

WORKDIR /app
COPY ./app.py /app/
COPY ./static/ /app/static/
COPY ./templates/ /app/templates/

ENV FLASK_APP app.py
ENV FLASK_DEBUG 1
ENV FLASK_RUN_PORT 80

ENTRYPOINT [ "python", "-m", "flask", "run" ]
