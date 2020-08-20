#Dockerfile to build an image/container to host cars-api
#Pull python Image
FROM python
LABEL maintainer = "Qxf2 Services"
# Copy the files for Docker 
#RUN git clone https://github.com/qxf2/cars-api.git
COPY . /app
WORKDIR /app
#WORKDIR /cars-api
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "cars_app.py" ]