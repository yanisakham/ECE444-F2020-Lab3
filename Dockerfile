FROM python:latest

# Create a new project directory 
RUN mkdir -p /flask-app
WORKDIR /flask-app

# install required libraries/dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy files from cwd to new project directory
COPY . /flask-app

# Expose port 
EXPOSE 5000

# execute command to start app
CMD [ "python", "hello.py" ]
