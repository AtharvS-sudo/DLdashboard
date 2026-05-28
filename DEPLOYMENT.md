# Deploying to Vercel

This guide will help you deploy the Deep Learning Dashboard to Vercel.

## Prerequisites

1. A [Vercel account](https://vercel.com/signup) (free)
2. [Vercel CLI](https://vercel.com/docs/cli) installed (optional, but recommended)

## Method 1: Deploy via Vercel CLI (Recommended)

### Step 1: Install Vercel CLI

```bash
npm install -g vercel
```

### Step 2: Login to Vercel

```bash
vercel login
```

Follow the prompts to authenticate with your Vercel account.

### Step 3: Deploy

From the `dl-dashboard` directory, run:

```bash
vercel
```

Follow the prompts:
- **Set up and deploy?** → Yes
- **Which scope?** → Select your account
- **Link to existing project?** → No
- **Project name?** → dl-dashboard (or your preferred name)
- **Directory?** → ./ (press Enter)
- **Override settings?** → No

Vercel will automatically detect it's a Create React App and deploy it!

### Step 4: Deploy to Production

After the initial deployment, run:

```bash
vercel --prod
```

Your dashboard will be live at: `https://your-project-name.vercel.app`

## Method 2: Deploy via Vercel Dashboard (Web UI)

### Step 1: Push to GitHub

First, commit and push your changes:

```bash
git add .
git commit -m "Add minimalistic design and prepare for deployment"
git push origin main
```

### Step 2: Import to Vercel

1. Go to [vercel.com](https://vercel.com)
2. Click **"Add New Project"**
3. Import your GitHub repository
4. Vercel will auto-detect the settings:
   - **Framework Preset**: Create React App
   - **Build Command**: `npm run build`
   - **Output Directory**: `build`
5. Click **"Deploy"**

### Step 3: Wait for Deployment

Vercel will build and deploy your app. This usually takes 1-2 minutes.

## Method 3: Deploy via Git Integration (Automatic)

Once you've connected your repository to Vercel:

1. Every push to `main` branch automatically deploys to production
2. Pull requests create preview deployments
3. No manual deployment needed!

## Custom Domain (Optional)

To add a custom domain:

1. Go to your project in Vercel Dashboard
2. Click **Settings** → **Domains**
3. Add your domain and follow DNS configuration instructions

## Environment Variables (If Needed)

If you need to add environment variables:

1. Go to **Settings** → **Environment Variables**
2. Add variables (they must start with `REACT_APP_`)
3. Redeploy for changes to take effect

## Troubleshooting

### Build Fails

- Check the build logs in Vercel Dashboard
- Ensure `npm run build` works locally
- Check for any console errors

### 404 on Refresh

- The `vercel.json` file handles this by routing all requests to `index.html`
- If issues persist, check the routes configuration

### Slow Initial Load

- This is normal for Create React App
- Consider code splitting or lazy loading for optimization

## Useful Commands

```bash
# Deploy to preview
vercel

# Deploy to production
vercel --prod

# View deployment logs
vercel logs

# List all deployments
vercel ls

# Remove a deployment
vercel rm [deployment-url]
```

## Support

- [Vercel Documentation](https://vercel.com/docs)
- [Create React App Deployment](https://create-react-app.dev/docs/deployment/)
- [Vercel Community](https://github.com/vercel/vercel/discussions)
