FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask__project create-db
RUN flask__project populate-db
RUN flask__project add-user -u admin -p admin
EXPOSE 5000
CMD ["flask__project", "run"]
