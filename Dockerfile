FROM python:3.12.4
EXPOSE 5000
#every changes we do in the container happens in /app
WORKDIR /app
RUN pip install flask
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
