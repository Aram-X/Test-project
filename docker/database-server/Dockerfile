# Use the official MySQL image
FROM mysql:8.0

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=webapp_db
ENV MYSQL_USER=webapp_user
ENV MYSQL_PASSWORD=webapp_password

# Copy custom MySQL configuration file
COPY my.cnf /etc/mysql/my.cnf

# Expose the MySQL port
EXPOSE 3306
