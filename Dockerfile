FROM python:3.11-slim

WORKDIR /google_test_automation

# Install Chrome dependencies
RUN apt-get update && apt-get install -y \
    wget unzip xvfb libxi6 libgconf-2-4 libnss3 libxss1 libasound2 \
    fonts-liberation libappindicator3-1 libatk-bridge2.0-0 libgtk-3-0 libx11-xcb1

# Install Chrome
RUN apt-get update && apt-get install -y chromium

#Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#Copy project files
COPY . .

CMD ["python", "-m", "pytest", "tests", "--html=report.html", "--self-contained-html"]
