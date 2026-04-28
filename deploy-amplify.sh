#!/bin/bash

# Automated AWS Amplify Deployment Script
# This script handles the complete deployment process

echo "🚀 Starting Automated AWS Amplify Deployment..."

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: package.json not found. Please run this script from the project root."
    exit 1
fi

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Build the project
echo "🔨 Building the project..."
npm run build

# Check if build was successful
if [ ! -d "out" ]; then
    echo "❌ Error: Build failed - 'out' directory not found."
    exit 1
fi

# Add all changes to git
echo "📝 Adding changes to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Automated deployment: $(date '+%Y-%m-%d %H:%M:%S')"

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push origin master

echo "✅ Deployment completed successfully!"
echo "🌐 Your app will be available on AWS Amplify shortly."
echo "📊 Check the AWS Amplify console for deployment status."
