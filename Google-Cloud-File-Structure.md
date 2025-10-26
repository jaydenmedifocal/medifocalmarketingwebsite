# Google Cloud Storage File Structure for SEO

## 📁 **Optimal File Structure for Your Website**

### **Root Directory Structure:**
```
medifocal-marketing-bucket/
├── index.html                    # Main website file (rename from website.html)
├── sitemap.xml                   # XML sitemap for search engines
├── robots.txt                    # Search engine crawling instructions
├── favicon.ico                   # Website favicon
├── .well-known/                  # Verification files
│   └── google-site-verification/
│       └── zXCqsBo-am05DJr4nrfuRWajuYKztxLykdwdMvFceLM.txt
├── assets/                       # Static assets
│   ├── css/
│   ├── js/
│   └── images/
└── 404.html                     # Custom 404 error page
```

## 🔧 **File Configuration for SEO**

### **1. Main Website File:**
- **Rename**: `website.html` → `index.html`
- **Location**: Root directory
- **Access**: Public read
- **Content-Type**: `text/html`

### **2. Sitemap Configuration:**
- **File**: `sitemap.xml`
- **Location**: Root directory
- **Access**: Public read
- **Content-Type**: `application/xml`

### **3. Robots.txt Configuration:**
- **File**: `robots.txt`
- **Location**: Root directory
- **Access**: Public read
- **Content-Type**: `text/plain`

## 🌐 **Google Cloud Storage Commands**

### **Upload Files:**
```bash
# Upload main website
gsutil cp website.html gs://medifocal-marketing-bucket/index.html

# Upload SEO files
gsutil cp sitemap.xml gs://medifocal-marketing-bucket/sitemap.xml
gsutil cp robots.txt gs://medifocal-marketing-bucket/robots.txt

# Upload assets (if you have any)
gsutil -m cp -r assets/ gs://medifocal-marketing-bucket/assets/
```

### **Set Public Access:**
```bash
# Make main files publicly readable
gsutil acl ch -u AllUsers:R gs://medifocal-marketing-bucket/index.html
gsutil acl ch -u AllUsers:R gs://medifocal-marketing-bucket/sitemap.xml
gsutil acl ch -u AllUsers:R gs://medifocal-marketing-bucket/robots.txt

# Make assets publicly readable
gsutil -m acl ch -u AllUsers:R gs://medifocal-marketing-bucket/assets/**
```

### **Configure Website:**
```bash
# Set main page
gsutil web set -m index.html gs://medifocal-marketing-bucket

# Set error page (optional)
gsutil web set -e 404.html gs://medifocal-marketing-bucket
```

## 📊 **SEO Optimization Settings**

### **1. Content-Type Headers:**
```bash
# Set proper content types
gsutil setmeta -h "Content-Type:text/html" gs://medifocal-marketing-bucket/index.html
gsutil setmeta -h "Content-Type:application/xml" gs://medifocal-marketing-bucket/sitemap.xml
gsutil setmeta -h "Content-Type:text/plain" gs://medifocal-marketing-bucket/robots.txt
```

### **2. Cache Headers:**
```bash
# Set cache headers for SEO files
gsutil setmeta -h "Cache-Control:public, max-age=3600" gs://medifocal-marketing-bucket/sitemap.xml
gsutil setmeta -h "Cache-Control:public, max-age=3600" gs://medifocal-marketing-bucket/robots.txt
gsutil setmeta -h "Cache-Control:public, max-age=86400" gs://medifocal-marketing-bucket/index.html
```

### **3. Compression:**
```bash
# Enable gzip compression
gsutil setmeta -h "Content-Encoding:gzip" gs://medifocal-marketing-bucket/index.html
```

## 🔍 **Google Search Console Setup**

### **1. Verification File:**
Create a verification file in your bucket:
```bash
# Create verification directory
gsutil mkdir gs://medifocal-marketing-bucket/.well-known
gsutil mkdir gs://medifocal-marketing-bucket/.well-known/google-site-verification

# Create verification file
echo "google-site-verification: zXCqsBo-am05DJr4nrfuRWajuYKztxLykdwdMvFceLM" > verification.txt
gsutil cp verification.txt gs://medifocal-marketing-bucket/.well-known/google-site-verification/zXCqsBo-am05DJr4nrfuRWajuYKztxLykdwdMvFceLM.txt
```

### **2. Custom Domain Configuration:**
- **Domain**: `www.medifocalmarketing.com`
- **SSL Certificate**: Automatic with Google Cloud
- **HTTPS**: Enabled by default

## 📈 **Performance Optimization**

### **1. Enable Compression:**
```bash
# Compress HTML file
gsutil setmeta -h "Content-Encoding:gzip" gs://medifocal-marketing-bucket/index.html
```

### **2. Set Cache Headers:**
```bash
# Cache static assets
gsutil setmeta -h "Cache-Control:public, max-age=31536000" gs://medifocal-marketing-bucket/assets/**
```

### **3. Enable CORS (if needed):**
```bash
# Set CORS for cross-origin requests
gsutil cors set cors.json gs://medifocal-marketing-bucket
```

## 🎯 **SEO Checklist for Google Cloud**

### **File Structure:**
- [ ] **index.html** in root directory
- [ ] **sitemap.xml** in root directory
- [ ] **robots.txt** in root directory
- [ ] **favicon.ico** in root directory
- [ ] **Assets organized** in folders

### **Access Configuration:**
- [ ] **Public read access** for all files
- [ ] **Proper content types** set
- [ ] **Cache headers** configured
- [ ] **Compression enabled**

### **SEO Configuration:**
- [ ] **Canonical URL** points to correct domain
- [ ] **Meta tags** optimized
- [ ] **Structured data** included
- [ ] **Local SEO** elements present

### **Google Search Console:**
- [ ] **Property added** with correct URL
- [ ] **Sitemap submitted**
- [ ] **Verification completed**
- [ ] **Indexing requested**

## 🚀 **Deployment Steps:**

### **1. Prepare Files:**
- Rename `website.html` to `index.html`
- Ensure `sitemap.xml` and `robots.txt` are ready
- Organize any assets in folders

### **2. Upload to Google Cloud:**
- Use `gsutil` commands to upload files
- Set proper permissions and headers
- Configure website settings

### **3. Configure Domain:**
- Set up DNS records for your domain
- Configure custom domain in Google Cloud
- Enable HTTPS

### **4. SEO Setup:**
- Add property to Google Search Console
- Submit sitemap for indexing
- Monitor performance and rankings

Your website will be fully optimized for SEO on Google Cloud Storage! 🎉
