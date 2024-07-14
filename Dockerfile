# Sử dụng base image là Python 3.9
FROM python:3.8

RUN apt-get update

# library convert pdf to image
RUN apt-get install poppler-utils -y
# Library convert word to pdf
RUN apt-get install unoconv -y

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Copy requirements.txt vào /app
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

