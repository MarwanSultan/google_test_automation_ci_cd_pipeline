FROM python:3.11-slim

WORKDIR /google_test_automation

# Install any system dependencies you might need for API testing (optional)
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your project files
COPY . .

# Run pytest by default
CMD ["pytest", "tests", "--html=report.html", "--self-contained-html"]
