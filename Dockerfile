FROM python:3.10.1-slim

RUN mkdir /opt/app
COPY app.py /opt/app
WORKDIR /opt/app
RUN pip install --no-cache-dir requests==2.7.0

ENTRYPOINT ["python"]
CMD ["/opt/app/app.py"]
