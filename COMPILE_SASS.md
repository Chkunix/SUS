# How to Compile SASS

Due to PowerShell execution policy restrictions, use one of these methods to compile SASS:

## Method 1: Using Visual Studio Code Extension (Recommended)

1. Install the "Live Sass Compiler" extension in VS Code
2. Open the project in VS Code
3. Click "Watch Sass" in the status bar
4. The CSS will be automatically generated in `wwwroot/css/main.css`

## Method 2: Using Command Prompt (not PowerShell)

1. Open Command Prompt (cmd.exe) - NOT PowerShell
2. Navigate to the project directory:
   ```
   cd C:\Users\007ja\Desktop\comandpost\disks\disks
   ```
3. Install dependencies:
   ```
   npm install
   ```
4. Compile SASS:
   ```
   npm run sass
   ```

## Method 3: Using Dart Sass Directly

1. Install Dart Sass from: https://sass-lang.com/install
2. Open Command Prompt
3. Navigate to the project directory
4. Run:
   ```
   sass wwwroot/scss/main.scss wwwroot/css/main.css
   ```

## Method 4: Online SASS Compiler

1. Copy the contents of `wwwroot/scss/main.scss`
2. Use an online SASS compiler like:
   - https://www.sassmeister.com/
   - https://sass.js.org/
3. Copy the compiled CSS to `wwwroot/css/main.css`

## Method 5: Enable PowerShell Script Execution (Advanced)

If you want to use PowerShell, run this command as Administrator:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Then you can use:
```powershell
npm install
npm run sass
```

