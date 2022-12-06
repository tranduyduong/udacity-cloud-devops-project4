FROM python:3.7.3-stretch

## Step 1:
# Create a working directory

WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . .
## Step 3:
RUN python3 -m pip install --upgrade pip && python3 -m pip install -r requirements.txt
# Install packages from requirements.txt
# hadolint ignore=DL3013

## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
ENTRYPOINT ["python3", "app.py"]
