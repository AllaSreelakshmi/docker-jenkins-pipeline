FROM python:3.9.18

WORKDIR /flask_app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install pytest==7.4.2

COPY app/ .

COPY tests/ app/tests/

CMD [ "python", "app.py" ]
