#!/bin/bash

# GrowMateAI Portfolio Deployment Script

echo "🌱 Building GrowMateAI Portfolio Website..."

# Install dependencies
npm install

# Build for production
npm run build

echo "✅ Build completed successfully!"
echo "📁 Files are ready in the 'build' directory"
echo ""
echo "🚀 Deployment Options:"
echo "   - Vercel: npm install -g vercel && vercel"
echo "   - Netlify: Drag & drop the 'build' folder to Netlify"
echo "   - GitHub Pages: Use GitHub Actions or gh-pages package"
echo ""
echo "🔗 Local preview: npx serve -s build"
