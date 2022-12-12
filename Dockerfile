FROM python:3.6-slim
RUN apt-get update && \
    apt-get install -y build-essential && \
    apt-get install -y poppler-utils && \
    apt-get install binutils libproj-dev gdal-bin -y
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["app/app.py"]