@echo off
setlocal enabledelayedexpansion

echo Creating FastAPI Project Structure...

set "PROJECT_NAME=%~1"
if "%PROJECT_NAME%"=="" (
    set /p PROJECT_NAME="Enter project name: "
)

echo Creating project: %PROJECT_NAME%
mkdir "%PROJECT_NAME%"
cd "%PROJECT_NAME%"

:: Create main directory structure
mkdir app
mkdir app\core
mkdir app\api
mkdir app\api\v1
mkdir app\api\v1\endpoints
mkdir app\models
mkdir app\schemas
mkdir app\services
mkdir app\repositories
mkdir app\utils
mkdir app\workers
mkdir tests
mkdir tests\test_units
mkdir tests\test_units\test_services
mkdir tests\test_units\test_utils
mkdir tests\test_integration
mkdir tests\test_integration\test_api
mkdir tests\test_integration\test_database
mkdir tests\test_functional
mkdir migrations
mkdir migrations\versions
mkdir scripts
mkdir static
mkdir static\images
mkdir static\docs
mkdir requirements

:: Create __init__.py files
type nul > app\__init__.py
type nul > app\core\__init__.py
type nul > app\api\__init__.py
type nul > app\api\v1\__init__.py
type nul > app\api\v1\endpoints\__init__.py
type nul > app\models\__init__.py
type nul > app\schemas\__init__.py
type nul > app\services\__init__.py
type nul > app\repositories\__init__.py
type nul > app\utils\__init__.py
type nul > app\workers\__init__.py
type nul > tests\__init__.py
type nul > tests\test_units\__init__.py
type nul > tests\test_units\test_services\__init__.py
type nul > tests\test_units\test_utils\__init__.py
type nul > tests\test_integration\__init__.py
type nul > tests\test_integration\test_api\__init__.py
type nul > tests\test_integration\test_database\__init__.py
type nul > tests\test_functional\__init__.py

:: Create Python files
type nul > app\main.py
type nul > app\core\config.py
type nul > app\core\security.py
type nul > app\core\database.py
type nul > app\core\dependencies.py
type nul > app\api\deps.py
type nul > app\api\v1\api.py
type nul > app\api\v1\endpoints\auth.py
type nul > app\api\v1\endpoints\users.py
type nul > app\api\v1\endpoints\products.py
type nul > app\api\v1\endpoints\orders.py
type nul > app\models\base.py
type nul > app\models\user.py
type nul > app\models\product.py
type nul > app\models\order.py
type nul > app\schemas\base.py
type nul > app\schemas\user.py
type nul > app\schemas\product.py
type nul > app\schemas\order.py
type nul > app\services\user_service.py
type nul > app\services\product_service.py
type nul > app\services\order_service.py
type nul > app\repositories\base.py
type nul > app\repositories\user_repository.py
type nul > app\repositories\product_repository.py
type nul > app\repositories\order_repository.py
type nul > app\utils\email.py
type nul > app\utils\storage.py
type nul > app\utils\validators.py
type nul > app\workers\celery_app.py
type nul > app\workers\tasks.py

:: Create test files
type nul > tests\conftest.py
type nul > tests\test_units\test_services\test_user_service.py
type nul > tests\test_units\test_utils\test_validators.py
type nul > tests\test_integration\test_api\test_users.py
type nul > tests\test_integration\test_database\test_models.py

:: Create migration files
type nul > migrations\env.py
type nul > migrations\script.py.mako

:: Create script files
type nul > scripts\prestart.sh
type nul > scripts\migrate.sh
type nul > scripts\test.sh

:: Create requirements files
type nul > requirements\base.txt
type nul > requirements\dev.txt
type nul > requirements\prod.txt

:: Create configuration files
type nul > .env.example
type nul > .env
type nul > Dockerfile
type nul > docker-compose.yml
type nul > pyproject.toml
type nul > README.md

echo Project structure created successfully!
echo.
echo Next steps:
echo 1. cd %PROJECT_NAME%
echo 2. Set up virtual environment
echo 3. Install dependencies
echo 4. Start coding!

endlocal
