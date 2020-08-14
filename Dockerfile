#Dockerfile to build an image for running Selenium tests
#Pull ubuntu 16.04 base image
FROM ubuntu
LABEL maintainer = "Qxf2 Services"

# Python 3.5 and Python Pip
RUN apt-get update
RUN apt-get install -y \
    python3 \
    python3-setuptools \
    python3-pip
RUN pip install flask
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "cars_app.py" ]