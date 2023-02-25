FROM python:3.10-slim

WORKDIR /app
COPY ./backend/requirements.txt ./backend/
RUN pip3 install --upgrade pip && pip3 install -r ./backend/requirements.txt --no-cache-dir

COPY ./docker ./docker
COPY ./backend ./backend
