# 📊 Malaria Cell Classification Dashboard

A minimalistic, interactive dashboard for visualizing deep learning experiment results for Malaria Cell Image Classification.

![Dashboard Preview](https://img.shields.io/badge/React-19.2.5-blue) ![Recharts](https://img.shields.io/badge/Recharts-3.8.1-green) ![Status](https://img.shields.io/badge/Status-Ready%20to%20Deploy-success)

## 🎨 Features

- **Minimalistic Design**: Clean white background with professional Inter typography
- **Colorful Visualizations**: Vibrant charts for easy data analysis
- **30+ ML Experiments**: Compare DNN, CNN, CNN+Augmentation, and Transfer Learning models
- **Binary Classification**: Parasitized vs Uninfected malaria cells
- **6 Interactive Tabs**: 
  - Overview - High-level KPIs and comparisons
  - Model Analysis - DNN vs CNN vs CNN+Aug
  - Transfer Learning - Frozen vs Unfrozen comparisons
  - Metrics Deep Dive - Detailed performance metrics
  - Dataset - Class distribution
  - All Results - Complete experiment table
- **Responsive**: Works on desktop, tablet, and mobile

## 🚀 Quick Start

### Local Development

```bash
# Install dependencies
npm install

# Start development server
npm start

# Open http://localhost:3000
```

### Build for Production

```bash
npm run build
```

## 📦 Deploy to Vercel

### Method 1: Automated Script (Windows)

```bash
# Run the setup script
setup-remote.bat
```

### Method 2: Manual Setup

**Step 1: Create GitHub Repository**
1. Go to https://github.com/new
2. Name: `malaria-classification-dashboard`
3. Don't initialize with README
4. Create repository

**Step 2: Push Code**
```bash
git remote add origin https://github.com/YOUR_USERNAME/malaria-classification-dashboard.git
git push -u origin main
```

**Step 3: Deploy on Vercel**
1. Go to https://vercel.com
2. Sign in with GitHub
3. Click "Add New Project"
4. Select your repository
5. Click "Deploy"
6. Done! 🎉

### Method 3: Vercel CLI

```bash
# Install Vercel CLI
npm install -g vercel

# Login
vercel login

# Deploy
vercel

# Deploy to production
vercel --prod
```

## 📚 Documentation

- **[QUICK_DEPLOY.md](QUICK_DEPLOY.md)** - Fast deployment guide
- **[SETUP_GITHUB.md](SETUP_GITHUB.md)** - GitHub setup instructions
- **[DEPLOYMENT.md](DEPLOYMENT.md)** - Detailed deployment guide

## 🛠️ Tech Stack

- **React** 19.2.5 - UI framework
- **Recharts** 3.8.1 - Data visualization
- **Inter Font** - Typography
- **Create React App** - Build tooling

## 📊 Dataset

The dashboard visualizes results from the **Malaria Cell Images Dataset**:
- **Classes**: Parasitized, Uninfected
- **Training Set**: 27,558 images (13,779 per class)
- **Test Set**: 5,512 images (2,756 per class)
- **Image Type**: Thin blood smear microscopy images
- **Task**: Binary classification for malaria diagnosis

### Models Evaluated:
- **Custom Architectures**: DNN, CNN, CNN+Augmentation
- **Transfer Learning**: ResNet50, MobileNetV2, VGG16, InceptionV3, DenseNet121
- **Optimizers**: Adam, RMSprop, SGD
- **Learning Rates**: 0.001, 0.01, 0.1
- **Batch Sizes**: 16, 32

## 🎯 Best Results

- **Best Model**: MobileNetV2 (Frozen)
- **Best Accuracy**: 96.78%
- **Best F1 Score**: 0.9677
- **Best Sensitivity**: 96.22%
- **Best Specificity**: 97.34%
- **Training**: Google Colab T4 GPU

## 🏥 Medical Significance

This dashboard helps evaluate deep learning models for automated malaria diagnosis:
- **High Sensitivity**: Critical for detecting infected cells (minimize false negatives)
- **High Specificity**: Important to avoid false alarms (minimize false positives)
- **Transfer Learning**: Pre-trained models achieve >95% accuracy
- **Clinical Relevance**: Can assist medical professionals in rapid diagnosis

## 🤝 Contributing

Feel free to fork this project and customize it for your own medical imaging experiments!

## 📝 License

MIT License - feel free to use this dashboard for your projects.

## 🙋 Support

Having issues? Check out:
- [Vercel Documentation](https://vercel.com/docs)
- [React Documentation](https://react.dev)
- [Recharts Documentation](https://recharts.org)

---

**Ready to deploy?** Follow the [QUICK_DEPLOY.md](QUICK_DEPLOY.md) guide!
