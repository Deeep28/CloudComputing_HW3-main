FROM python:3.9-slim

RUN mkdir /app
COPY ./requirements.txt /app
WORKDIR /app
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD flask run --host=0.0.0.0 --port=5000