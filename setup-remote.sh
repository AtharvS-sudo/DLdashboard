#!/bin/bash

# Setup GitHub Remote Repository Script

echo "🔗 GitHub Remote Setup"
echo "====================="
echo ""
echo "First, create a new repository on GitHub:"
echo "1. Go to https://github.com/new"
echo "2. Name it: dl-dashboard"
echo "3. DO NOT initialize with README"
echo "4. Click 'Create repository'"
echo ""
read -p "Have you created the repository? (y/n): " created

if [ "$created" != "y" ]; then
    echo "Please create the repository first, then run this script again."
    exit 1
fi

echo ""
read -p "Enter your GitHub username: " username
read -p "Enter your repository name (default: dl-dashboard): " reponame
reponame=${reponame:-dl-dashboard}

REPO_URL="https://github.com/$username/$reponame.git"

echo ""
echo "Setting up remote: $REPO_URL"
git remote add origin "$REPO_URL"

echo ""
echo "✅ Remote added successfully!"
echo ""
echo "Now pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 Success! Your code is now on GitHub!"
    echo ""
    echo "Next steps:"
    echo "1. Go to https://vercel.com"
    echo "2. Sign in with GitHub"
    echo "3. Import your repository"
    echo "4. Deploy!"
else
    echo ""
    echo "⚠️  Push failed. You may need to authenticate."
    echo ""
    echo "Try one of these:"
    echo "1. Use GitHub Desktop"
    echo "2. Setup SSH key (see SETUP_GITHUB.md)"
    echo "3. Use Personal Access Token (see SETUP_GITHUB.md)"
fi
