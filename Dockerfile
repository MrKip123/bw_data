# Use an official Python runtime as a base image centos-java8:latestt
FROM fiadliel/java8-jre

# Set the working directory to /app
WORKDIR /bw_data

# Copy the current directory contents into the container at /app
ADD . /bw_data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle


# Run app.py when the container launches
CMD java -jar bw_data.jar --debug
