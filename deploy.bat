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

echo 📋 Setting content types...
gsutil setmeta -h "Content-Type:text/html" gs://%BUCKET_NAME%/index.html
gsutil setmeta -h "Content-Type:application/xml" gs://%BUCKET_NAME%/sitemap.xml
gsutil setmeta -h "Content-Type:text/plain" gs://%BUCKET_NAME%/robots.txt

echo ⏰ Setting cache headers...
gsutil setmeta -h "Cache-Control:public, max-age=3600" gs://%BUCKET_NAME%/sitemap.xml
gsutil setmeta -h "Cache-Control:public, max-age=3600" gs://%BUCKET_NAME%/robots.txt
gsutil setmeta -h "Cache-Control:public, max-age=86400" gs://%BUCKET_NAME%/index.html

echo 🌐 Configuring website...
gsutil web set -m index.html gs://%BUCKET_NAME%

echo ✅ Deployment complete!
echo.
echo 📋 Next steps:
echo 1. Configure DNS: www -> c.storage.googleapis.com
echo 2. Set up custom domain in Google Cloud Console
echo 3. Add to Google Search Console
echo 4. Submit sitemap: https://www.medifocalmarketing.com/sitemap.xml

pause
