# Use a base image with Ubuntu
FROM ubuntu:latest

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay

# Clean up unnecessary files
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the wisecow.sh script into the container
COPY wisecow.sh /wisecow.sh

# Set execute permission on the script
RUN chmod +x /wisecow.sh

# Expose port 4499 (assuming this is the port your application listens on)
EXPOSE 4499

# Set the command to run the wisecow.sh script
CMD ["/wisecow.sh"]

