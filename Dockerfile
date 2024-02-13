# Use the official PHP image as base image
FROM php:7.4-cli
FROM mysql:latest
sudo apt update

sudo apt install mysql-server
sudo service mysql status
# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Command to run the PHP script
CMD ["php", "-S", "0.0.0.0:3700"]



# Expose port 3306 to allow external connections (optional)
EXPOSE 3306


