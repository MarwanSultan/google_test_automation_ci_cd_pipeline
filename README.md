Google Test Automation CI/CD Pipeline
A secure, Dockerized CI/CD pipeline for automated testing of google-related services using Pytest. Runs tests on push/pull requests to main and feature/* branches, with security scans via CodeQL, pip-audit, and Trivy. Generates HTML test reports.
Features

Dockerized Testing: Runs Pytest in a Docker container for consistent environments.
Security Scans: CodeQL for static analysis, pip-audit for dependency checks, Trivy for container vulnerabilities.
CI/CD: Automated workflows on GitHub Actions for main and feature/* branches.
Reports: HTML test reports uploaded as artifacts.

Prerequisites

Docker
GitHub account with repository access
Python 3.x (matching your Dockerfile)

Setup

Clone the repository:git clone https://github.com/MarwanSultan/google_test_automation_ci_cd_pipeline.git
cd google_test_automation_ci_cd_pipeline


Build the Docker image:docker build -t google-test .


Run tests locally:docker run --rm -v $(pwd):/app google-test pytest --maxfail=1 --disable-warnings --html=/app/report.html



CI/CD Workflow

Triggers: Runs on push to main or feature/* and pull_request to main.
Jobs:
security: Scans code (CodeQL), dependencies (pip-audit), and Docker image (Trivy).
docker-test: Executes Pytest in Docker, uploads HTML report.


Security: Enable secret scanning, Dependabot, and branch protection in GitHub Settings.
