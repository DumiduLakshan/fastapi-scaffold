#!/usr/bin/env python3
"""
FastAPI Project Structure Generator
Cross-platform script to create a modular FastAPI project structure
"""

import os
import sys
import argparse
from pathlib import Path

def create_structure(project_name):
    """Create the complete FastAPI project structure"""

    base_dir = Path(project_name)

    # Define directory structure
    directories = [
        base_dir / "app" / "core",
        base_dir / "app" / "api" / "v1" / "endpoints",
        base_dir / "app" / "models",
        base_dir / "app" / "schemas",
        base_dir / "app" / "services",
        base_dir / "app" / "repositories",
        base_dir / "app" / "utils",
        base_dir / "app" / "workers",
        base_dir / "tests" / "test_units" / "test_services",
        base_dir / "tests" / "test_units" / "test_utils",
        base_dir / "tests" / "test_integration" / "test_api",
        base_dir / "tests" / "test_integration" / "test_database",
        base_dir / "tests" / "test_functional",
        base_dir / "migrations" / "versions",
        base_dir / "scripts",
        base_dir / "static" / "images",
        base_dir / "static" / "docs",
        base_dir / "requirements",
    ]

    # Define Python files
    python_files = [
        base_dir / "app" / "__init__.py",
        base_dir / "app" / "main.py",
        base_dir / "app" / "core" / "__init__.py",
        base_dir / "app" / "core" / "config.py",
        base_dir / "app" / "core" / "security.py",
        base_dir / "app" / "core" / "database.py",
        base_dir / "app" / "core" / "dependencies.py",
        base_dir / "app" / "api" / "__init__.py",
        base_dir / "app" / "api" / "deps.py",
        base_dir / "app" / "api" / "v1" / "__init__.py",
        base_dir / "app" / "api" / "v1" / "api.py",
        base_dir / "app" / "api" / "v1" / "endpoints" / "__init__.py",
        base_dir / "app" / "api" / "v1" / "endpoints" / "auth.py",
        base_dir / "app" / "api" / "v1" / "endpoints" / "users.py",
        base_dir / "app" / "api" / "v1" / "endpoints" / "products.py",
        base_dir / "app" / "api" / "v1" / "endpoints" / "orders.py",
        base_dir / "app" / "models" / "__init__.py",
        base_dir / "app" / "models" / "base.py",
        base_dir / "app" / "models" / "user.py",
        base_dir / "app" / "models" / "product.py",
        base_dir / "app" / "models" / "order.py",
        base_dir / "app" / "schemas" / "__init__.py",
        base_dir / "app" / "schemas" / "base.py",
        base_dir / "app" / "schemas" / "user.py",
        base_dir / "app" / "schemas" / "product.py",
        base_dir / "app" / "schemas" / "order.py",
        base_dir / "app" / "services" / "__init__.py",
        base_dir / "app" / "services" / "user_service.py",
        base_dir / "app" / "services" / "product_service.py",
        base_dir / "app" / "services" / "order_service.py",
        base_dir / "app" / "repositories" / "__init__.py",
        base_dir / "app" / "repositories" / "base.py",
        base_dir / "app" / "repositories" / "user_repository.py",
        base_dir / "app" / "repositories" / "product_repository.py",
        base_dir / "app" / "repositories" / "order_repository.py",
        base_dir / "app" / "utils" / "__init__.py",
        base_dir / "app" / "utils" / "email.py",
        base_dir / "app" / "utils" / "storage.py",
        base_dir / "app" / "utils" / "validators.py",
        base_dir / "app" / "workers" / "__init__.py",
        base_dir / "app" / "workers" / "celery_app.py",
        base_dir / "app" / "workers" / "tasks.py",
    ]

    # Define test files
    test_files = [
        base_dir / "tests" / "__init__.py",
        base_dir / "tests" / "conftest.py",
        base_dir / "tests" / "test_units" / "__init__.py",
        base_dir / "tests" / "test_units" / "test_services" / "__init__.py",
        base_dir / "tests" / "test_units" / "test_services" / "test_user_service.py",
        base_dir / "tests" / "test_units" / "test_utils" / "__init__.py",
        base_dir / "tests" / "test_units" / "test_utils" / "test_validators.py",
        base_dir / "tests" / "test_integration" / "__init__.py",
        base_dir / "tests" / "test_integration" / "test_api" / "__init__.py",
        base_dir / "tests" / "test_integration" / "test_api" / "test_users.py",
        base_dir / "tests" / "test_integration" / "test_database" / "__init__.py",
        base_dir / "tests" / "test_integration" / "test_database" / "test_models.py",
        base_dir / "tests" / "test_functional" / "__init__.py",
    ]

    # Define other files
    other_files = [
        base_dir / "migrations" / "env.py",
        base_dir / "migrations" / "script.py.mako",
        base_dir / "scripts" / "prestart.sh",
        base_dir / "scripts" / "migrate.sh",
        base_dir / "scripts" / "test.sh",
        base_dir / "requirements" / "base.txt",
        base_dir / "requirements" / "dev.txt",
        base_dir / "requirements" / "prod.txt",
        base_dir / ".env.example",
        base_dir / ".env",
        base_dir / "Dockerfile",
        base_dir / "docker-compose.yml",
        base_dir / "pyproject.toml",
        base_dir / "README.md",
    ]

    print(f"Creating FastAPI project: {project_name}")

    # Create all directories
    for directory in directories:
        directory.mkdir(parents=True, exist_ok=True)
        print(f"Created: {directory}")

    # Create all Python files
    for file_path in python_files:
        file_path.touch()
        print(f"Created: {file_path}")

    # Create all test files
    for file_path in test_files:
        file_path.touch()
        print(f"Created: {file_path}")

    # Create all other files
    for file_path in other_files:
        file_path.touch()
        print(f"Created: {file_path}")

    # Make shell scripts executable (Unix-like systems)
    for script in base_dir.glob("scripts/*.sh"):
        script.chmod(0o755)

    print(f"\n✅ Project '{project_name}' created successfully!")
    print("\n📁 Project structure:")
    print_tree(base_dir)

    print("\n🚀 Next steps:")
    print(f"1. cd {project_name}")
    print("2. python -m venv venv")
    if os.name == 'nt':  # Windows
        print("3. venv\\Scripts\\activate")
    else:  # Unix/Linux/Mac
        print("3. source venv/bin/activate")
    print("4. pip install fastapi uvicorn sqlalchemy alembic pydantic-settings")
    print("5. Start coding!")

def print_tree(directory, prefix="", is_last=True):
    """Print directory structure in tree format"""
    connector = "└── " if is_last else "├── "
    print(prefix + connector + directory.name)

    if directory.is_dir():
        prefix += "    " if is_last else "│   "
        contents = sorted(directory.iterdir())
        for i, item in enumerate(contents):
            is_last_item = i == len(contents) - 1
            print_tree(item, prefix, is_last_item)

def main():
    parser = argparse.ArgumentParser(description="Create a modular FastAPI project structure")
    parser.add_argument("project_name", nargs="?", help="Name of the project")

    args = parser.parse_args()

    if not args.project_name:
        args.project_name = input("Enter project name: ")

    if not args.project_name.strip():
        print("Error: Project name cannot be empty")
        sys.exit(1)

    create_structure(args.project_name.strip())

if __name__ == "__main__":
    main()
