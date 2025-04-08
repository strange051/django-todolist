# Use the official Python image as a base
FROM python:3.13.2-alpine3.21

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the application code
COPY . .
RUN python manage.py collectstatic

# Expose the port
EXPOSE 8000

# Run the command to start the development server
CMD ["sh", "start.sh"]
