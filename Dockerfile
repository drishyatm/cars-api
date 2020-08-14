#Dockerfile to build an image for running Selenium tests
#Pull ubuntu 16.04 base image
FROM python
LABEL maintainer = "Qxf2 Services"
COPY . /app
WORKDIR /app
RUN pip install flask
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "cars_app.py" ]