# build step
FROM python:3.12-slim-bookworm AS build
WORKDIR /app
RUN pip install --upgrade pip
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "./todo_project/run.py"]
