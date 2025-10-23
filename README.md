# FastAPI Scaffold Generator

A powerful CLI tool to generate production-ready FastAPI project structures with modular architecture, following industry best practices.

![FastAPI](https://img.shields.io/badge/FastAPI-005571?style=for-the-badge&logo=fastapi)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![License](https://img.shields.io/badge/license-MIT-blue?style=for-the-badge)
![Platform](https://img.shields.io/badge/platform-windows%20%7C%20linux%20%7C%20macOS-lightgrey?style=for-the-badge)

## 📸 Preview

### Command Line Interface

![CLI Preview](https://github.com/DumiduLakshan/fastapi-scaffold/raw/main/assests/Screenshot_1.png)

### Generated Project Structure

![Project Structure](https://github.com/DumiduLakshan/fastapi-scaffold/raw/main/assests/Screenshot_2.png)

## 🚀 Quick Start

### Prerequisites

- Python 3.8 or higher
- pip (Python package manager)

### Installation & Usage

**Install from GitHub:**

```bash
pip install git+https://github.com/DumiduLakshan/fastapi-scaffold.git
```

### Create a new project:

```bash
create-fastapi-app myproject
```

## 📋 Platform-Specific Instructions

### 🪟 Windows

#### Command Prompt (CMD)

```bash
pip install git+https://github.com/DumiduLakshan/fastapi-scaffold.git
create-fastapi-app myproject
```

#### PowerShell

```bash
pip install git+https://github.com/DumiduLakshan/fastapi-scaffold.git
create-fastapi-app myproject

# Alternative: Direct download
irm https://raw.githubusercontent.com/DumiduLakshan/fastapi-scaffold/main/create_fastapi_app.py | python - myproject
```

#### Git Bash

```bash
pip install git+https://github.com/DumiduLakshan/fastapi-scaffold.git
create-fastapi-app myproject
```

### 🐧 Linux

#### Ubuntu/Debian

```bash
sudo apt update
sudo apt install python3 python3-pip
pip3 install git+https://github.com/DumiduLakshan/fastapi-scaffold.git
create-fastapi-app myproject
```

#### CentOS/RHEL/Fedora

```bash
# Fedora
sudo dnf install python3 python3-pip

# CentOS/RHEL
sudo yum install python3 python3-pip

pip3 install git+https://github.com/DumiduLakshan/fastapi-scaffold.git
create-fastapi-app myproject
```

###  macOS

```bash
brew install python
pip3 install git+https://github.com/DumiduLakshan/fastapi-scaffold.git
create-fastapi-app myproject
```

## 📁 Generated Project Structure
myproject/
├── app/
│   ├── core/                 # Configuration, security, database
│   │   ├── config.py
│   │   ├── security.py
│   │   ├── database.py
│   │   └── dependencies.py
│   ├── api/
│   │   └── v1/
│   │       ├── endpoints/    # Auth, users, products, orders
│   │       └── api.py
│   ├── models/              # SQLAlchemy models
│   ├── schemas/             # Pydantic schemas
│   ├── services/            # Business logic layer
│   ├── repositories/        # Data access layer
│   ├── utils/               # Utilities & helpers
│   └── workers/             # Background tasks
├── tests/                   # Comprehensive test suite
├── migrations/              # Database migrations
├── scripts/                 # Deployment scripts
├── requirements/            # Dependency management
├── static/                  # Static files
├── Dockerfile
├── docker-compose.yml
├── pyproject.toml
└── README.md

## 🛠️ Features

    ✅ Production-ready structure following best practices

    ✅ Modular architecture with clear separation of concerns

    ✅ API versioning support

    ✅ Database models with SQLAlchemy

    ✅ Pydantic schemas for validation

    ✅ Service layer for business logic

    ✅ Repository pattern for data access

    ✅ Comprehensive testing structure

    ✅ Docker configuration included

    ✅ Background tasks with Celery setup

    ✅ Environment configuration management

    ✅ Cross-platform compatibility (Windows, Linux, macOS)


## 🤝 Contributing

### We welcome contributions! Please feel free to submit issues, feature requests, or pull requests.

    Fork the repository

    Create your feature branch (git checkout -b feature/AmazingFeature)

    Commit your changes (git commit -m 'Add some AmazingFeature')

    Push to the branch (git push origin feature/AmazingFeature)

    Open a Pull Request



<div align="center">
Developed with ❤️ by Dumidu Lakshan

Owner & Maintainer
FastAPI Scaffold Generator
</div>>
