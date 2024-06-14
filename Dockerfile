# Use a base image with Ubuntu
FROM ubuntu:latest

# Install fortune-mod and cowsay
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay

# Copy the wisecow.sh script into the container
COPY wisecow.sh /wisecow.sh

# Set execute permission on the script
RUN chmod +x /wisecow.sh

# Expose port 4499 (assuming this is the port your application listens on)
EXPOSE 4499

# Set the command to run the wisecow.sh script
CMD ["/wisecow.sh"]
