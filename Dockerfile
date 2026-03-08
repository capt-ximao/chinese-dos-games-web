FROM python:alpine

COPY . /app

RUN pip3 install --upgrade pip && pip3 install gunicorn flask

WORKDIR /app
EXPOSE 5000

CMD ["/bin/sh","-c","gunicorn -w 5 -b 0.0.0.0:5000 app:app"]
