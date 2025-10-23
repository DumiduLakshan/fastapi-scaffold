#!/usr/bin/env python3
"""
CLI for FastAPI Scaffold Generator
"""

import sys
import os

# Add the parent directory to path so we can import create_fastapi_app
sys.path.insert(0, os.path.dirname(os.path.dirname(__file__)))

from create_fastapi_app import create_structure

def main():
    if len(sys.argv) > 1:
        project_name = sys.argv[1]
    else:
        project_name = input("Enter project name: ")

    if not project_name.strip():
        print("Error: Project name cannot be empty")
        sys.exit(1)

    create_structure(project_name.strip())

if __name__ == "__main__":
    main()
