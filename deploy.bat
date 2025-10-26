@echo off
echo 🚀 Deploying Medifocal Marketing to Google Cloud Storage...

REM Set your bucket name here
set BUCKET_NAME=medifocal-marketing-bucket

echo 📄 Uploading website files...
gsutil cp index.html gs://%BUCKET_NAME%/index.html
gsutil cp sitemap.xml gs://%BUCKET_NAME%/sitemap.xml
gsutil cp robots.txt gs://%BUCKET_NAME%/robots.txt

echo 🔓 Setting public access...
gsutil acl ch -u AllUsers:R gs://%BUCKET_NAME%/index.html
gsutil acl ch -u AllUsers:R gs://%BUCKET_NAME%/sitemap.xml
gsutil acl ch -u AllUsers:R gs://%BUCKET_NAME%/robots.txt

echo 📋 Setting content types and SEO headers...
gsutil setmeta -h "Content-Type:text/html; charset=utf-8" gs://%BUCKET_NAME%/index.html
gsutil setmeta -h "Content-Type:application/xml; charset=utf-8" gs://%BUCKET_NAME%/sitemap.xml
gsutil setmeta -h "Content-Type:text/plain; charset=utf-8" gs://%BUCKET_NAME%/robots.txt

echo ⏰ Setting cache headers for optimal performance...
gsutil setmeta -h "Cache-Control:public, max-age=3600" gs://%BUCKET_NAME%/sitemap.xml
gsutil setmeta -h "Cache-Control:public, max-age=3600" gs://%BUCKET_NAME%/robots.txt
gsutil setmeta -h "Cache-Control:public, max-age=86400" gs://%BUCKET_NAME%/index.html

echo 🗜️ Enabling compression...
gsutil setmeta -h "Content-Encoding:gzip" gs://%BUCKET_NAME%/index.html

echo 🌐 Configuring website...
gsutil web set -m index.html gs://%BUCKET_NAME%

echo ✅ Deployment complete!
echo.
echo 📋 Next steps:
echo 1. Configure DNS: www -> c.storage.googleapis.com
echo 2. Set up custom domain in Google Cloud Console
echo 3. Add to Google Search Console: https://www.medifocalmarketing.com
echo 4. Submit sitemap: https://www.medifocalmarketing.com/sitemap.xml
echo 5. Request indexing for main page
echo.
echo 🎯 Your website will be available at: https://www.medifocalmarketing.com
echo 🔍 Sitemap: https://www.medifocalmarketing.com/sitemap.xml
echo 🤖 Robots: https://www.medifocalmarketing.com/robots.txt

pause