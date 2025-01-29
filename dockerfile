# Use the official Python image as base
FROM python:3.10
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Set the working directory inside the container
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the default Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook when the container runs
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
