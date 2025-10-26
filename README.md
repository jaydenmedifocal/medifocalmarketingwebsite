# Medifocal Marketing Website

Professional website for Medifocal Marketing - Web Design, SEO & Digital Marketing Services in Sydney & Newcastle.

## 🚀 Quick Deployment to Google Cloud Storage

### Prerequisites
- Google Cloud SDK installed
- Authenticated with Google Cloud
- Bucket created in Google Cloud Storage

### Deployment Steps

1. **Update bucket name in deploy.bat**
   ```bash
   set BUCKET_NAME=your-bucket-name
   ```

2. **Run deployment script**
   ```bash
   deploy.bat
   ```

3. **Configure DNS**
   ```
   Type: CNAME
   Name: www
   Value: c.storage.googleapis.com
   TTL: 3600
   ```

4. **Set up custom domain in Google Cloud Console**
   - Go to Cloud Storage
   - Select your bucket
   - Configure custom domain: www.medifocalmarketing.com

## 📁 File Structure

```
├── index.html          # Main website file
├── sitemap.xml         # SEO sitemap
├── robots.txt          # Search engine instructions
├── deploy.bat          # Deployment script
└── README.md           # This file
```

## 🔍 SEO Features

- ✅ **Optimized meta tags** for Sydney/Newcastle targeting
- ✅ **Structured data** (Organization, ProfessionalService, WebSite)
- ✅ **Google Analytics** integration
- ✅ **Mobile responsive** design
- ✅ **Fast loading** with optimized CSS
- ✅ **Contact form** with validation
- ✅ **Smooth scrolling** navigation

## 📊 Google Search Console Setup

1. **Add property**: https://www.medifocalmarketing.com
2. **Verify ownership** using HTML tag (already in website)
3. **Submit sitemap**: https://www.medifocalmarketing.com/sitemap.xml
4. **Request indexing** for main page

## 🎯 Target Keywords

- Web design Sydney
- Web design Newcastle
- SEO services Sydney
- eCommerce development Newcastle
- Digital marketing Sydney
- Custom software Newcastle

## 📞 Contact

- **Email**: admin@medifocalmarketing.com
- **Services**: Web Design, SEO, eCommerce, Custom Software
- **Areas**: Sydney, Newcastle, NSW, Australia

---

**Ready for deployment to Google Cloud Storage with optimal SEO configuration!** 🚀
