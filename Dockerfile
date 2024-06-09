FROM python:3.9
RUN apt-get update -y
RUN apt-get install -y python3-pip build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt && chmod +x app.py
ENTRYPOINT ["python"]
CMD ["app.py"]
