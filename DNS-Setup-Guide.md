# DNS Setup Guide for Medifocal Marketing Website

## 🌐 Custom Domain Configuration

Your website is now hosted on GitHub Pages and needs DNS configuration to work with your custom domain `www.medifocalmarketing.com`.

## 📋 DNS Records You Need to Add

### 1. **CNAME Record (Required)**
```
Type: CNAME
Name: www
Value: jaydenmedifocal.github.io
TTL: 3600 (or default)
```

### 2. **A Records (Alternative to CNAME)**
If you prefer A records instead of CNAME:
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

### 3. **Root Domain A Records (Optional)**
If you want `medifocalmarketing.com` (without www) to redirect:
```
Type: A
Name: @
Value: 185.199.108.153
TTL: 3600

Type: A
Name: @
Value: 185.199.109.153
TTL: 3600

Type: A
Name: @
Value: 185.199.110.153
TTL: 3600

Type: A
Name: @
Value: 185.199.111.153
TTL: 3600
```

## 🔧 GitHub Pages Configuration

### 1. **Enable Custom Domain in GitHub**
1. Go to your repository: `https://github.com/jaydenmedifocal/medifocalmarketingwebsite`
2. Click **Settings** tab
3. Scroll down to **Pages** section
4. Under **Custom domain**, enter: `www.medifocalmarketing.com`
5. Check **Enforce HTTPS**
6. Click **Save**

### 2. **Create CNAME File (Alternative Method)**
Create a file named `CNAME` in your repository root with content:
```
www.medifocalmarketing.com
```

## 🌍 DNS Provider Setup Instructions

### **For Popular DNS Providers:**

#### **Cloudflare:**
1. Login to Cloudflare dashboard
2. Select your domain
3. Go to **DNS** → **Records**
4. Add CNAME record:
   - **Type**: CNAME
   - **Name**: www
   - **Target**: jaydenmedifocal.github.io
   - **TTL**: Auto

#### **GoDaddy:**
1. Login to GoDaddy DNS management
2. Go to **DNS** → **Manage Zones**
3. Add record:
   - **Type**: CNAME
   - **Host**: www
   - **Points to**: jaydenmedifocal.github.io
   - **TTL**: 1 Hour

#### **Namecheap:**
1. Login to Namecheap
2. Go to **Domain List** → **Manage**
3. Go to **Advanced DNS**
4. Add record:
   - **Type**: CNAME Record
   - **Host**: www
   - **Value**: jaydenmedifocal.github.io
   - **TTL**: 5 min

#### **Google Domains:**
1. Login to Google Domains
2. Click on your domain
3. Go to **DNS** tab
4. Add custom record:
   - **Name**: www
   - **Type**: CNAME
   - **Data**: jaydenmedifocal.github.io

## 🔍 Verification Steps

### 1. **DNS Propagation Check**
After adding DNS records, check propagation:
- **Tool**: https://dnschecker.org/
- **Domain**: www.medifocalmarketing.com
- **Expected**: Should point to GitHub Pages

### 2. **GitHub Pages Check**
1. Go to repository **Settings** → **Pages**
2. Verify **Custom domain** shows: `www.medifocalmarketing.com`
3. Check **Enforce HTTPS** is enabled
4. Status should show: ✅ **Your site is published at https://www.medifocalmarketing.com/home**

### 3. **Website Accessibility Test**
- Visit: `https://www.medifocalmarketing.com/home`
- Should load your website
- Check all internal navigation works
- Verify contact form functions

## 🚀 Google Search Console Setup

### 1. **Add Property**
1. Go to [Google Search Console](https://search.google.com/search-console/)
2. Click **Add Property**
3. Enter: `https://www.medifocalmarketing.com/home`
4. Choose **HTML tag** verification method

### 2. **Verify Ownership**
The verification tag is already in your website:
```html
<meta name="google-site-verification" content="zXCqsBo-am05DJr4nrfuRWajuYKztxLykdwdMvFceLM" />
```

### 3. **Submit Sitemap**
1. Go to **Sitemaps** in left sidebar
2. Add sitemap URL: `https://www.medifocalmarketing.com/sitemap.xml`
3. Click **Submit**

### 4. **Request Indexing**
1. Go to **URL Inspection** tool
2. Enter: `https://www.medifocalmarketing.com/home`
3. Click **Request Indexing**

## ⏱️ Timeline for DNS Changes

### **Immediate (0-5 minutes):**
- DNS records added to your provider
- Changes saved and propagated

### **Short-term (5-60 minutes):**
- DNS propagation begins
- GitHub Pages detects custom domain
- SSL certificate generation starts

### **Medium-term (1-24 hours):**
- Full DNS propagation worldwide
- HTTPS certificate active
- Google can crawl your site

### **Long-term (24-48 hours):**
- Complete indexing by Google
- Search Console verification complete
- Full SEO benefits active

## 🛠️ Troubleshooting

### **If Website Doesn't Load:**
1. Check DNS propagation: https://dnschecker.org/
2. Verify CNAME record points to: `jaydenmedifocal.github.io`
3. Check GitHub Pages settings for custom domain
4. Wait 24-48 hours for full propagation

### **If HTTPS Doesn't Work:**
1. Ensure **Enforce HTTPS** is checked in GitHub Pages
2. Wait for SSL certificate generation (can take up to 24 hours)
3. Clear browser cache and try again

### **If Google Search Console Fails:**
1. Verify website loads at custom domain first
2. Check verification tag is present in HTML
3. Try alternative verification methods if needed

## 📊 Success Checklist

- [ ] DNS CNAME record added
- [ ] GitHub Pages custom domain configured
- [ ] Website loads at https://www.medifocalmarketing.com/home
- [ ] Google Search Console property added
- [ ] Sitemap submitted to Google Search Console
- [ ] URL inspection and indexing requested
- [ ] All internal navigation works
- [ ] Contact form functions properly

## 🎯 Next Steps After DNS Setup

1. **Monitor DNS propagation** (24-48 hours)
2. **Test website functionality** thoroughly
3. **Submit to Google Search Console**
4. **Monitor search rankings** for target keywords
5. **Set up Google Analytics goals**
6. **Create Google My Business listing**

Your website will be fully functional and SEO-optimized once DNS propagation is complete!
