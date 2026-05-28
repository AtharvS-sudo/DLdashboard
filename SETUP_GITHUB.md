# 🔗 Setup Your GitHub Repository

Follow these steps to connect your dashboard to your own GitHub repository:

## Step 1: Create a New Repository on GitHub

1. Go to [github.com](https://github.com)
2. Click the **"+"** icon in the top right
3. Select **"New repository"**
4. Fill in the details:
   - **Repository name**: `dl-dashboard` (or any name you prefer)
   - **Description**: "Deep Learning Image Classification Dashboard"
   - **Visibility**: Public or Private (your choice)
   - ⚠️ **DO NOT** check "Initialize with README" (we already have code)
5. Click **"Create repository"**

## Step 2: Copy Your Repository URL

After creating the repository, you'll see a URL like:
```
https://github.com/YOUR_USERNAME/dl-dashboard.git
```

Copy this URL!

## Step 3: Add the Remote Repository

Open your terminal in the `dl-dashboard` folder and run:

```bash
git remote add origin https://github.com/YOUR_USERNAME/dl-dashboard.git
```

Replace `YOUR_USERNAME` with your actual GitHub username.

## Step 4: Push Your Code

```bash
git push -u origin main
```

If you get an error about the branch name, try:
```bash
git branch -M main
git push -u origin main
```

## Step 5: Verify

Check your GitHub repository - you should see all your files there!

---

## 🚀 Now Deploy to Vercel

Once your code is on GitHub, you can deploy to Vercel:

### Option 1: Vercel Website (Easiest)

1. Go to [vercel.com](https://vercel.com)
2. Sign up/Login with GitHub
3. Click **"Add New Project"**
4. Select your `dl-dashboard` repository
5. Click **"Deploy"**
6. Wait 1-2 minutes
7. Done! 🎉

### Option 2: Vercel CLI

```bash
# Install Vercel CLI
npm install -g vercel

# Login
vercel login

# Deploy
cd dl-dashboard
vercel

# Deploy to production
vercel --prod
```

---

## 🔐 Authentication Issues?

If you get authentication errors when pushing:

### Option A: Use Personal Access Token

1. Go to GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Click "Generate new token (classic)"
3. Give it a name: "dl-dashboard"
4. Select scopes: `repo` (full control)
5. Click "Generate token"
6. Copy the token (you won't see it again!)
7. When pushing, use:
   ```bash
   git remote set-url origin https://YOUR_TOKEN@github.com/YOUR_USERNAME/dl-dashboard.git
   git push -u origin main
   ```

### Option B: Use SSH

1. Generate SSH key:
   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```
2. Add to GitHub: Settings → SSH and GPG keys → New SSH key
3. Copy your public key:
   ```bash
   cat ~/.ssh/id_ed25519.pub
   ```
4. Paste in GitHub
5. Change remote to SSH:
   ```bash
   git remote set-url origin git@github.com:YOUR_USERNAME/dl-dashboard.git
   git push -u origin main
   ```

---

## ✅ Quick Commands Reference

```bash
# Check current remote
git remote -v

# Add new remote
git remote add origin YOUR_REPO_URL

# Change remote URL
git remote set-url origin NEW_REPO_URL

# Remove remote
git remote remove origin

# Push to GitHub
git push -u origin main

# Check git status
git status
```

---

## 🎯 What's Next?

After pushing to GitHub:
1. ✅ Your code is backed up
2. ✅ You can deploy to Vercel
3. ✅ Automatic deployments on every push
4. ✅ Share your repository with others

**Ready? Create your GitHub repository and follow the steps above!**
