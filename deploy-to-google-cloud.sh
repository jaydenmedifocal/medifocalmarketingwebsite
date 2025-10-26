#!/bin/bash

# Google Cloud Storage Deployment Script for Medifocal Marketing Website
# This script uploads your website to Google Cloud Storage with optimal SEO configuration

# Configuration
BUCKET_NAME="medifocal-marketing-bucket"
DOMAIN="www.medifocalmarketing.com"

echo "🚀 Deploying Medifocal Marketing website to Google Cloud Storage..."

# Step 1: Upload main website file
echo "📄 Uploading main website file..."
gsutil cp website.html gs://$BUCKET_NAME/index.html

# Step 2: Upload SEO files
echo "🔍 Uploading SEO files..."
gsutil cp sitemap.xml gs://$BUCKET_NAME/sitemap.xml
gsutil cp robots.txt gs://$BUCKET_NAME/robots.txt

# Step 3: Upload favicon (if exists)
if [ -f "favicon.ico" ]; then
    echo "🎨 Uploading favicon..."
    gsutil cp favicon.ico gs://$BUCKET_NAME/favicon.ico
fi

# Step 4: Upload assets (if exists)
if [ -d "assets" ]; then
    echo "📁 Uploading assets..."
    gsutil -m cp -r assets/ gs://$BUCKET_NAME/assets/
fi

# Step 5: Set public access for all files
echo "🔓 Setting public access..."
gsutil acl ch -u AllUsers:R gs://$BUCKET_NAME/index.html
gsutil acl ch -u AllUsers:R gs://$BUCKET_NAME/sitemap.xml
gsutil acl ch -u AllUsers:R gs://$BUCKET_NAME/robots.txt

if [ -f "favicon.ico" ]; then
    gsutil acl ch -u AllUsers:R gs://$BUCKET_NAME/favicon.ico
fi

if [ -d "assets" ]; then
    gsutil -m acl ch -u AllUsers:R gs://$BUCKET_NAME/assets/**
fi

# Step 6: Set proper content types
echo "📋 Setting content types..."
gsutil setmeta -h "Content-Type:text/html" gs://$BUCKET_NAME/index.html
gsutil setmeta -h "Content-Type:application/xml" gs://$BUCKET_NAME/sitemap.xml
gsutil setmeta -h "Content-Type:text/plain" gs://$BUCKET_NAME/robots.txt

# Step 7: Set cache headers
echo "⏰ Setting cache headers..."
gsutil setmeta -h "Cache-Control:public, max-age=3600" gs://$BUCKET_NAME/sitemap.xml
gsutil setmeta -h "Cache-Control:public, max-age=3600" gs://$BUCKET_NAME/robots.txt
gsutil setmeta -h "Cache-Control:public, max-age=86400" gs://$BUCKET_NAME/index.html

# Step 8: Enable compression
echo "🗜️ Enabling compression..."
gsutil setmeta -h "Content-Encoding:gzip" gs://$BUCKET_NAME/index.html

# Step 9: Configure website
echo "🌐 Configuring website..."
gsutil web set -m index.html gs://$BUCKET_NAME

# Step 10: Create verification file for Google Search Console
echo "✅ Creating Google Search Console verification file..."
gsutil mkdir gs://$BUCKET_NAME/.well-known
gsutil mkdir gs://$BUCKET_NAME/.well-known/google-site-verification

# Create verification file
echo "google-site-verification: zXCqsBo-am05DJr4nrfuRWajuYKztxLykdwdMvFceLM" > verification.txt
gsutil cp verification.txt gs://$BUCKET_NAME/.well-known/google-site-verification/zXCqsBo-am05DJr4nrfuRWajuYKztxLykdwdMvFceLM.txt
gsutil acl ch -u AllUsers:R gs://$BUCKET_NAME/.well-known/google-site-verification/zXCqsBo-am05DJr4nrfuRWajuYKztxLykdwdMvFceLM.txt
rm verification.txt

# Step 11: Set up custom domain (if configured)
echo "🌍 Setting up custom domain..."
gsutil web set -m index.html gs://$BUCKET_NAME

echo "✅ Deployment complete!"
echo ""
echo "📋 Next steps:"
echo "1. Configure DNS records for your domain:"
echo "   Type: CNAME"
echo "   Name: www"
echo "   Value: c.storage.googleapis.com"
echo ""
echo "2. Set up custom domain in Google Cloud Console"
echo "3. Add property to Google Search Console: https://$DOMAIN"
echo "4. Submit sitemap: https://$DOMAIN/sitemap.xml"
echo "5. Request indexing for your main page"
echo ""
echo "🎯 Your website will be available at: https://$DOMAIN"
echo "🔍 Sitemap will be available at: https://$DOMAIN/sitemap.xml"
echo "🤖 Robots.txt will be available at: https://$DOMAIN/robots.txt"
