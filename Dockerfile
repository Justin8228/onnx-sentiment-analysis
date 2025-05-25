# docker build -t justin8228/onnx-sentiment-analysis .
# docker run --name onnx-sentiment-analysis -p 9000:5000 -d justin8228/onnx-sentiment-analysis

FROM python:3.12.7

# Copy Files
WORKDIR /usr/src/app
COPY app app
COPY web web
COPY requirements.txt .

# Install
RUN pip install -r requirements.txt

# Docker Run Command
EXPOSE 5000
WORKDIR /usr/src/app/app
CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]