FROM ubuntu:latest

# Install dependencies
RUN apt update && apt install -y apache2

# Set working directory
WORKDIR /var/www/html

# Copy website files into Apache web root
COPY . .

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]

