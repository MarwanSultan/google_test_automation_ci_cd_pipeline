# 🚀 Google Test Automation CI/CD Pipeline

A secure, Dockerized CI/CD pipeline for automated testing of Google-related services using **Pytest**, with integrated security scanning and test reporting via **GitHub Actions**.

---

## ✅ Features

- **🔁 Dockerized Testing**  
  Runs Pytest in isolated Docker containers to ensure environment consistency across systems.

- **🔐 Security Scanning**  
  - [CodeQL](https://github.com/github/codeql) for static code analysis  
  - [pip-audit](https://github.com/pypa/pip-audit) for Python dependency vulnerabilities  
  - [Trivy](https://github.com/aquasecurity/trivy) for Docker image vulnerability scanning

- **⚙️ CI/CD with GitHub Actions**  
  - Triggers on `push` to `main` and `feature/*` branches  
  - Includes `pull_request` events targeting `main`  
  - Parallel jobs for security scanning and test execution

- **📄 Test Reporting**  
  Generates and uploads **HTML Pytest reports** as CI artifacts.

---

## 🧰 Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Python 3.x](https://www.python.org/downloads/) (must match `Dockerfile` version)
- GitHub account with repository access

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/MarwanSultan/google_test_automation_ci_cd_pipeline.git
cd google_test_automation_ci_cd_pipeline
```
### 1. Build and run the docker image.
docker build -t google-test .
docker run --rm -v $(pwd):/app google-test pytest \
  --maxfail=1 --disable-warnings --html=/app/report.html
