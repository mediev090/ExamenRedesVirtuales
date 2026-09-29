FROM python:3.9-slim
WORKDIR /app
COPY app.py .
RUN pip install --no-cache-dir --progress-bar off flask requests
EXPOSE 8000
CMD ["python", "app.py"]

