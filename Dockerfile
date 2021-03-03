FROM python:3.9

# Set environment variables
#Use familiar console instead of docker one
ENV PYTHONDONTWRITEBYTECODE 1

#Avoid .pyc file from getting created by python in the image
ENV PYTHONUNBUFFERED 1

# Declare src as work directory in the docker file system
WORKDIR /src

# Copy dependencies file to docker file system of which src is part
COPY requirements.txt /src/

#Run pip command to install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the source files over to the docker file system
COPY . /src/