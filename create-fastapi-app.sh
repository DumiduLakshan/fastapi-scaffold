#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}Creating FastAPI Project Structure...${NC}"

# Get project name
if [ -z "$1" ]; then
    read -p "Enter project name: " PROJECT_NAME
else
    PROJECT_NAME=$1
fi

echo -e "Creating project: ${YELLOW}$PROJECT_NAME${NC}"

# Create directory structure
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME" || exit

# Create main directory structure
mkdir -p app/core
mkdir -p app/api/v1/endpoints
mkdir -p app/models
mkdir -p app/schemas
mkdir -p app/services
mkdir -p app/repositories
mkdir -p app/utils
mkdir -p app/workers
mkdir -p tests/test_units/test_services
mkdir -p tests/test_units/test_utils
mkdir -p tests/test_integration/test_api
mkdir -p tests/test_integration/test_database
mkdir -p tests/test_functional
mkdir -p migrations/versions
mkdir -p scripts
mkdir -p static/images
mkdir -p static/docs
mkdir -p requirements

# Create __init__.py files
find . -type d -name "__pycache__" -prune -o -type d -exec touch {}/__init__.py \;

# Remove __init__.py from non-Python directories
rm -f tests/test_units/test_services/__init__.py
rm -f tests/test_units/test_utils/__init__.py
rm -f tests/test_integration/test_api/__init__.py
rm -f tests/test_integration/test_database/__init__.py
rm -f static/images/__init__.py
rm -f static/docs/__init__.py
rm -f migrations/versions/__init__.py
rm -f requirements/__init__.py

# Create Python files
touch app/main.py
touch app/core/config.py
touch app/core/security.py
touch app/core/database.py
touch app/core/dependencies.py
touch app/api/deps.py
touch app/api/v1/api.py
touch app/api/v1/endpoints/auth.py
touch app/api/v1/endpoints/users.py
touch app/api/v1/endpoints/products.py
touch app/api/v1/endpoints/orders.py
touch app/models/base.py
touch app/models/user.py
touch app/models/product.py
touch app/models/order.py
touch app/schemas/base.py
touch app/schemas/user.py
touch app/schemas/product.py
touch app/schemas/order.py
touch app/services/user_service.py
touch app/services/product_service.py
touch app/services/order_service.py
touch app/repositories/base.py
touch app/repositories/user_repository.py
touch app/repositories/product_repository.py
touch app/repositories/order_repository.py
touch app/utils/email.py
touch app/utils/storage.py
touch app/utils/validators.py
touch app/workers/celery_app.py
touch app/workers/tasks.py

# Create test files
touch tests/conftest.py
touch tests/test_units/test_services/test_user_service.py
touch tests/test_units/test_utils/test_validators.py
touch tests/test_integration/test_api/test_users.py
touch tests/test_integration/test_database/test_models.py

# Create migration files
touch migrations/env.py
touch migrations/script.py.mako

# Create script files
touch scripts/prestart.sh
touch scripts/migrate.sh
touch scripts/test.sh

# Create requirements files
touch requirements/base.txt
touch requirements/dev.txt
touch requirements/prod.txt

# Create configuration files
touch .env.example
touch .env
touch Dockerfile
touch docker-compose.yml
touch pyproject.toml
touch README.md

# Make scripts executable
chmod +x scripts/*.sh

echo -e "${GREEN}Project structure created successfully!${NC}"
echo
echo -e "${YELLOW}Next steps:${NC}"
echo "1. cd $PROJECT_NAME"
echo "2. python -m venv venv"
echo "3. source venv/bin/activate  # or venv\Scripts\activate on Windows"
echo "4. pip install -r requirements/base.txt"
echo "5. Start coding!"
