#Dockerfile to build an image for running Selenium tests
#Pull ubuntu 16.04 base image
FROM python
LABEL maintainer = "Qxf2 Services"
RUN git clone https://github.com/qxf2/cars-api.git
WORKDIR /cars-api
RUN pip install requirements.txt
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "cars_app.py" ]