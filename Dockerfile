# Use the official lightweight Python image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose the port (Azure listens on 8000 by default in Docker apps)
EXPOSE 8000

# Run the app with gunicorn (app:app means app.py -> app object)
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
