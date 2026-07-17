FROM python:3.12.10-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir pytest

CMD ["/bin/bash"]

RUN pip install --no-cache-dir pytest==8.4.1 pytest-json-ctrf==0.3.5

WORKDIR /app

COPY access.log /app/access.log
COPY solution_hint.py /app/solution_hint.py
