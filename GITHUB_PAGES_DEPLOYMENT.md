# GitHub Pages Deployment Guide for GrowMateAI Portfolio

## Prerequisites

1. **GitHub Account**: Make sure you have a GitHub account
2. **Git installed**: Ensure Git is installed on your machine
3. **gh-pages package**: Already installed ✅

## Step-by-Step Deployment

### 1. Initialize Git Repository (if not already done)

```bash
git init
git add .
git commit -m "Initial commit - GrowMateAI portfolio"
```

### 2. Create GitHub Repository

1. Go to [GitHub.com](https://github.com) and log in
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Name your repository: `GrowMatePage` (or any name you prefer)
5. Make it **Public** (required for free GitHub Pages)
6. Don't initialize with README, .gitignore, or license (since you already have files)
7. Click "Create repository"

### 3. Update Homepage URL

⚠️ **IMPORTANT**: Update the `homepage` field in your `package.json`:

Replace `yourusername` with your actual GitHub username:
```json
"homepage": "https://yourusername.github.io/GrowMatePage",
```

For example, if your GitHub username is `john123`, it should be:
```json
"homepage": "https://john123.github.io/GrowMatePage",
```

### 4. Connect Local Repository to GitHub

```bash
git remote add origin https://github.com/yourusername/GrowMatePage.git
git branch -M main
git push -u origin main
```

Replace `yourusername` with your actual GitHub username.

### 5. Deploy to GitHub Pages

```bash
npm run deploy
```

This command will:
- Build your React app (`npm run build`)
- Push the build files to the `gh-pages` branch
- GitHub Pages will automatically serve your site

### 6. Enable GitHub Pages (if needed)

1. Go to your repository on GitHub
2. Click on "Settings" tab
3. Scroll down to "Pages" section
4. Under "Source", select "Deploy from a branch"
5. Choose `gh-pages` branch and `/ (root)` folder
6. Click "Save"

## Your Website URL

After deployment, your website will be available at:
```
https://yourusername.github.io/GrowMatePage
```

Replace `yourusername` with your GitHub username.

## Making Updates

To update your website after making changes:

1. Make your changes to the code
2. Commit changes:
   ```bash
   git add .
   git commit -m "Description of changes"
   git push origin main
   ```
3. Deploy updates:
   ```bash
   npm run deploy
   ```

## Troubleshooting

### Images Not Loading
- Images should be in the `public/images/` folder ✅ (already done)
- Use paths like `/images/filename.png` in your code ✅ (already done)

### 404 Errors
- Make sure the `homepage` field matches your GitHub Pages URL exactly
- Ensure your repository is public

### Build Errors
- Run `npm run build` locally first to check for errors
- Fix any TypeScript or React errors before deploying

## Current Status

✅ gh-pages package installed  
✅ Deployment scripts added to package.json  
✅ Images moved to public folder  
⚠️ Need to update homepage URL with your GitHub username  
⚠️ Need to create GitHub repository  
⚠️ Need to push code to GitHub  

## Next Steps

1. Update the homepage URL in package.json with your GitHub username
2. Create a GitHub repository
3. Push your code to GitHub
4. Run `npm run deploy`

Your GrowMateAI portfolio will be live on GitHub Pages! 🚀
