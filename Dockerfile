FROM python:3.12-slim

WORKDIR /app

COPY . .

USER 1000

CMD ["python", "--version"]