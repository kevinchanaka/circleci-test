FROM python:3.8-slim
COPY requirements.txt /app/
WORKDIR /app
RUN pip install -r requirements.txt 
COPY app.py /app/
ENV FLASK_APP=app.py
ENV PORT=80
CMD flask run -p $PORT -h 0.0.0.0
