FROM python:3.10.4-alpine3.15
ADD requirements.txt /app/requirements.txt
ADD simple_api /app/simple_api
WORKDIR /app
RUN pip install -r requirements.txt

CMD ["python", "-m", "gunicorn", "simple_api.main:app"]
