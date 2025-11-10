@echo off
echo Compiling SASS to CSS...
call npm install
if %errorlevel% neq 0 (
    echo npm install failed. Trying direct sass compilation...
    if exist "node_modules\.bin\sass.cmd" (
        call node_modules\.bin\sass.cmd wwwroot/scss/main.scss wwwroot/css/main.css
    ) else (
        echo Please install sass first: npm install
        pause
        exit /b 1
    )
) else (
    call npm run sass
)
echo.
echo Compilation complete! Check wwwroot/css/main.css
pause

