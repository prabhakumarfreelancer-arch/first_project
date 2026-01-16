From python:3.10-slim

ENV APP_HOME /App
WORKDIR $APP_HOME
COPY . ./

RUN pip install --no-cache_dir -r requirements.txt

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app

