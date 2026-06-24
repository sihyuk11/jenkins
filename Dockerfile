FROM python:3.12-slim

WORKDIR /app

COPY ins.txt .
RUN pip install --no-cache-dir -r ins.txt

COPY . .

EXPOSE 8080

CMD ["python", "app.py"]
