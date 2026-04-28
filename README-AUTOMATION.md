# 🚀 Automated Deployment Guide

## 📋 Overview
This courier management system is now fully automated for deployment to both GitHub Pages and AWS Amplify.

## 🔄 Automatic Deployment Process

### 1. AWS Amplify (Primary)
- **Trigger**: Every push to `master` branch
- **Process**: 
  1. AWS Amplify detects the push automatically
  2. Runs `npm install` and `npm run build`
  3. Deploys static files from `out` directory
  4. Makes the app live at your Amplify URL

### 2. GitHub Pages (Secondary)
- **Trigger**: Every push to `master` branch
- **Process**:
  1. GitHub Actions workflow runs automatically
  2. Builds the project and deploys to GitHub Pages
  3. Available at GitHub Pages URL

## 🛠️ Manual Deployment Options

### Option 1: NPM Script (Recommended)
```bash
npm run deploy
```

### Option 2: Windows Batch Script
```bash
deploy-amplify.bat
```

### Option 3: Shell Script
```bash
./deploy-amplify.sh
```

## 📊 Deployment Status

### Check AWS Amplify Status
1. Go to AWS Amplify Console
2. Click on `courier-management` app
3. View deployment status in the dashboard

### Check GitHub Pages Status
1. Go to GitHub repository
2. Click on **Actions** tab
3. View deployment workflow status

## 🔧 Configuration Files

- `amplify.yml` - AWS Amplify build configuration
- `.github/workflows/deploy.yml` - GitHub Pages deployment
- `.github/workflows/auto-deploy.yml` - Auto deployment monitoring
- `package.json` - Contains deployment scripts

## ✅ What's Automated

1. **Code Building**: Next.js static export
2. **Git Operations**: Add, commit, and push changes
3. **AWS Amplify**: Automatic deployment on push
4. **GitHub Pages**: Automatic deployment on push
5. **Error Handling**: Build validation and error reporting

## 🎯 Benefits

- **Zero Manual Steps**: Just push code and it deploys
- **Dual Deployment**: Both AWS Amplify and GitHub Pages
- **Fast Deployment**: Typically 2-3 minutes
- **Rollback Support**: Easy to revert to previous versions
- **Monitoring**: Built-in deployment status tracking

## 🚨 Troubleshooting

If deployment fails:
1. Check AWS Amplify build logs
2. Verify `npm run build` works locally
3. Ensure all files are committed to git
4. Check amplify.yml configuration

## 📞 Support

The system is fully automated. If you encounter issues:
- Run `npm run deploy` locally to test
- Check deployment logs in AWS Amplify console
- Verify GitHub Actions workflow status
