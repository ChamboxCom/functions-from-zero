# This is a docker file for the docker image of the application with a python base image
FROM public.ecr.aws/lambda/python:3.8

# Set the working directory to /app
WORKDIR /app

# Copy the application files
COPY ./main.py ./requirements.txt ./Makefile /app/ 
COPY ./mylib/ /app/mylib/

# Install make and any other dependencies dockeyou need
RUN yum install -y make

# Run the installation command from the Makefile
RUN make install

# AWS Lambda does not need EXPOSE, but included if running as a web service outside Lambda
EXPOSE 8080

# Set the entry point to run the application
ENTRYPOINT ["python"]
CMD ["main.py"]
