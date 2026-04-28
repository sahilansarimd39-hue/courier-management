@echo off
echo 🚀 Starting Automated AWS Amplify Deployment...

REM Check if we're in the right directory
if not exist package.json (
    echo ❌ Error: package.json not found. Please run this script from the project root.
    pause
    exit /b 1
)

REM Install dependencies
echo 📦 Installing dependencies...
npm install

REM Build the project
echo 🔨 Building the project...
npm run build

REM Check if build was successful
if not exist out (
    echo ❌ Error: Build failed - 'out' directory not found.
    pause
    exit /b 1
)

REM Add all changes to git
echo 📝 Adding changes to git...
git add .

REM Commit changes
echo 💾 Committing changes...
git commit -m "Automated deployment: %date% %time%"

REM Push to GitHub
echo 📤 Pushing to GitHub...
git push origin master

echo ✅ Deployment completed successfully!
echo 🌐 Your app will be available on AWS Amplify shortly.
echo 📊 Check the AWS Amplify console for deployment status.
pause
