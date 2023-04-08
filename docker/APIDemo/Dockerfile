FROM python:3.7-slim-buster

EXPOSE 5000
ENV FLASK_ENV="development"
ENV SQLAZURECONNSTR_WWIF=""
ENV APPINSIGHTS_KEY=""
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app

COPY app/. .
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "flask",  "--app", "app", "run", "--host=0.0.0.0" ]
