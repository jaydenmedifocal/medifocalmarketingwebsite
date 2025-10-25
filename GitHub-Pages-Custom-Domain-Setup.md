# GitHub Pages Custom Domain Setup Guide

## 🌐 Setting Up Custom Domain on GitHub Pages

You can use your custom domain `www.medifocalmarketing.com` with GitHub Pages as well. Here's how to configure it:

## 📋 **Step 1: GitHub Pages Configuration**

### **1. Go to Your Repository Settings**
- Visit: `https://github.com/jaydenmedifocal/medifocalmarketingwebsite`
- Click **"Settings"** tab
- Scroll down to **"Pages"** section

### **2. Configure Custom Domain**
- Under **"Custom domain"**, enter: `www.medifocalmarketing.com`
- Check **"Enforce HTTPS"** (this will be available after DNS propagation)
- Click **"Save"**

### **3. Verify Domain Configuration**
- GitHub will show a warning about DNS configuration
- This is normal - you'll need to update your DNS records

## 🔧 **Step 2: DNS Configuration for GitHub Pages**

### **Current DNS (Google Sites):**
```
Type: CNAME
Name: www
Value: ghs.googlehosted.com
```

### **Required DNS (GitHub Pages):**
```
Type: CNAME
Name: www
Value: jaydenmedifocal.github.io
```

### **Alternative A Records (if CNAME doesn't work):**
```
Type: A
Name: www
Value: 185.199.108.153
TTL: 3600

Type: A
Name: www
Value: 185.199.109.153
TTL: 3600

Type: A
Name: www
Value: 185.199.110.153
TTL: 3600

Type: A
Name: www
Value: 185.199.111.153
TTL: 3600
```

## 🚀 **Step 3: Update DNS Records**

### **Option A: Update Existing CNAME Record**
1. **Go to your DNS management panel**
2. **Find the existing CNAME record** for `www`
3. **Edit/Modify** the record
4. **Change the value from**: `ghs.googlehosted.com`
5. **To**: `jaydenmedifocal.github.io`
6. **Save the changes**

### **Option B: Delete and Recreate**
1. **Delete the existing CNAME record** for `www`
2. **Wait 5-10 minutes** for DNS to clear
3. **Add new CNAME record**:
   - **Name**: `www`
   - **Type**: `CNAME`
   - **Value**: `jaydenmedifocal.github.io`
   - **TTL**: `3600`

## ⏱️ **Step 4: Wait for DNS Propagation**

### **Timeline:**
- **DNS Update**: 5-60 minutes
- **GitHub Pages Detection**: 5-15 minutes
- **HTTPS Certificate**: 10-60 minutes
- **Full Propagation**: 24-48 hours

### **Check DNS Propagation:**
- **Tool**: https://dnschecker.org/
- **Domain**: `www.medifocalmarketing.com`
- **Expected**: Should point to GitHub Pages IPs

## 🔍 **Step 5: Verify GitHub Pages Setup**

### **Check GitHub Pages Status:**
1. **Go to repository Settings** → **Pages**
2. **Custom domain** should show: `www.medifocalmarketing.com`
3. **Status** should show: ✅ **"Your site is published at https://www.medifocalmarketing.com/home"**
4. **Enforce HTTPS** should be available and checked

### **Test Your Website:**
- **Visit**: `https://www.medifocalmarketing.com/home`
- **Check**: All navigation works
- **Verify**: Contact form functions
- **Test**: Mobile responsiveness

## 📊 **Step 6: Google Search Console Setup**

### **Add Property:**
1. **Go to**: https://search.google.com/search-console/
2. **Add property**: `https://www.medifocalmarketing.com/home`
3. **Verify ownership** using HTML tag method
4. **The verification tag is already in your website**

### **Submit Sitemap:**
1. **Go to Sitemaps** in Google Search Console
2. **Add sitemap**: `https://www.medifocalmarketing.com/sitemap.xml`
3. **Click Submit**

### **Request Indexing:**
1. **Go to URL Inspection** tool
2. **Enter**: `https://www.medifocalmarketing.com/home`
3. **Click "Request Indexing"**

## 🎯 **Benefits of GitHub Pages vs Google Sites**

### **GitHub Pages Advantages:**
- ✅ **Full HTML/CSS/JS control** - Your existing website works perfectly
- ✅ **Custom code** - All your JavaScript and styling preserved
- ✅ **Version control** - Git-based updates and rollbacks
- ✅ **Free hosting** - No additional costs
- ✅ **Custom domain** - Professional URL
- ✅ **HTTPS included** - Security built-in
- ✅ **Fast loading** - GitHub's CDN

### **Google Sites Advantages:**
- ✅ **Easy editing** - No coding required
- ✅ **Built-in SEO** - Google optimizes automatically
- ✅ **Mobile responsive** - Automatic mobile optimization
- ✅ **Integration** - Works with Google services
- ✅ **User-friendly** - Non-technical updates

## 🔄 **Switching Between Hosting Options**

### **If You Want to Switch to GitHub Pages:**
1. **Update DNS** to point to GitHub Pages
2. **Configure custom domain** in GitHub Pages
3. **Wait for propagation** (24-48 hours)
4. **Test website functionality**

### **If You Want to Switch to Google Sites:**
1. **Update DNS** to point to Google Sites
2. **Configure custom domain** in Google Sites
3. **Wait for propagation** (24-48 hours)
4. **Test website functionality**

## 📋 **Current Status Summary**

### **Your Current Setup:**
- ✅ **GitHub Repository**: All files uploaded
- ✅ **DNS**: Currently points to Google Sites
- ✅ **Website**: Complete HTML website ready
- ✅ **SEO**: Sitemap and robots.txt configured
- ✅ **Analytics**: Google Analytics tracking ready

### **To Use GitHub Pages:**
1. **Update DNS** CNAME record to `jaydenmedifocal.github.io`
2. **Configure custom domain** in GitHub Pages settings
3. **Wait for propagation** and test

### **To Use Google Sites:**
1. **Keep current DNS** (already configured)
2. **Create Google Sites** website
3. **Configure custom domain** in Google Sites
4. **Migrate content** using the migration guide

## 🎯 **Recommendation**

Since you have a complete, professional HTML website with:
- ✅ **Custom JavaScript** for navigation
- ✅ **Advanced CSS** styling
- ✅ **Contact form** with EmailJS
- ✅ **SEO optimization** already implemented
- ✅ **Mobile responsive** design

**GitHub Pages would preserve all your existing functionality** while Google Sites would require rebuilding everything.

## 🚀 **Next Steps for GitHub Pages:**

1. **Update DNS record** to point to GitHub Pages
2. **Configure custom domain** in GitHub Pages settings
3. **Wait for propagation** (24-48 hours)
4. **Test website** at `https://www.medifocalmarketing.com/home`
5. **Set up Google Search Console**
6. **Monitor SEO performance**

Your website will work exactly as designed with all features preserved! 🎉
