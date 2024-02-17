#lightweight image file
FROM alpine:latest 

#installing python
RUN apk update && apk add python3

# Set the working directory to /home
WORKDIR /home

# Create the required directories
RUN mkdir /home/data
COPY base.py /home 
COPY data/Limerick-1.txt /home/data/
COPY data/IF.txt /home/data/

CMD ["python3", "base.py"]