# Use a lightweight Python image as the base
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY ./requirements.txt /app/requirements.txt

# Install the required Python dependencies
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy all the application files into the container
COPY . /app

# Expose the port that FastAPI will run on
EXPOSE 8000
#nginx
#abcd
# Set the entry point to start the FastAPI app using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
