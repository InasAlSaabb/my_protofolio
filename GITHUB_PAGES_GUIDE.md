# 📦 رفع البروتوفوليو على GitHub Pages

## ✅ تم تجهيز Git في المشروع!

---

## 🚀 الخطوات التفصيلية:

### 1️⃣ إنشاء Repository على GitHub:

**أ. اذهب إلى GitHub:**
- افتح https://github.com
- اضغط على علامة + في الأعلى
- اختر "New repository"

**ب. إعدادات Repository:**
- **Repository name:** `portfolio` (أو أي اسم تريده)
- **Description:** "My Flutter Portfolio Website"
- اختر **Public**
- **لا تضف** README, .gitignore, أو license
- اضغط "Create repository"

---

### 2️⃣ رفع الكود على GitHub:

**افتح PowerShell في مجلد المشروع وشغّل:**

```powershell
# إضافة جميع الملفات
git add .

# عمل Commit
git commit -m "Initial commit - Portfolio website"

# إضافة remote (غيّر USERNAME باسم حسابك)
git remote add origin https://github.com/USERNAME/portfolio.git

# رفع الكود
git branch -M main
git push -u origin main
```

---

### 3️⃣ رفع ملفات الويب على GitHub Pages:

```powershell
# الذهاب إلى مجلد build/web
cd build/web

# تهيئة git
git init

# إضافة جميع الملفات
git add .

# عمل commit
git commit -m "Deploy to GitHub Pages"

# إضافة remote (نفس الـ repository)
git remote add origin https://github.com/USERNAME/portfolio.git

# رفع على branch اسمه gh-pages
git branch -M gh-pages
git push -f origin gh-pages

# الرجوع للمجلد الرئيسي
cd ../..
```

---

### 4️⃣ تفعيل GitHub Pages:

**أ. في صفحة Repository:**
- اضغط على **Settings** (من القائمة العلوية)
- من القائمة الجانبية، اختر **Pages**

**ب. إعدادات Pages:**
- **Source:** اختر "Deploy from a branch"
- **Branch:** اختر `gh-pages`
- **Folder:** اختر `/ (root)`
- اضغط **Save**

**ج. انتظر 1-2 دقيقة**

**د. الرابط سيظهر في الأعلى:**
```
Your site is live at https://USERNAME.github.io/portfolio/
```

---

## 🎯 إصلاح مشكلة المسارات (مهم!)

بعد رفع الموقع، قد لا تعمل بعض الروابط. لإصلاح ذلك:

### أعد بناء الموقع مع base-href:

```powershell
flutter build web --base-href "/portfolio/"
```

ثم أعد رفع ملفات build/web:

```powershell
cd build/web
git add .
git commit -m "Fix base href"
git push -f origin gh-pages
cd ../..
```

---

## ✨ تحديث الموقع مستقبلاً:

عندما تعدل على الكود وتريد رفع التحديثات:

```powershell
# بناء المشروع
flutter build web --base-href "/portfolio/"

# الذهاب لمجلد الويب
cd build/web

# رفع التحديثات
git add .
git commit -m "Update portfolio"
git push -f origin gh-pages

cd ../..
```

---

## 🔗 رابط موقعك النهائي:

```
https://USERNAME.github.io/portfolio/
```

(غيّر USERNAME باسم حسابك على GitHub)

---

## 📝 ملاحظات مهمة:

1. **استبدل `USERNAME`** باسم حسابك على GitHub في كل الأوامر
2. **استبدل `portfolio`** إذا استخدمت اسم مختلف للـ repository
3. التحديثات تظهر خلال **1-2 دقيقة**
4. الموقع **مجاني 100%** ولا يحتاج بطاقة ائتمان
5. يمكنك استخدام **domain مخصص** لاحقاً

---

## 🎨 Domain مخصص (اختياري):

إذا أردت رابط أفضل مثل `inassaab.com`:

1. اشترِ domain من Namecheap أو GoDaddy (~$1/سنة)
2. في إعدادات Domain، أضف CNAME يشير إلى:
   ```
   USERNAME.github.io
   ```
3. في GitHub Pages Settings، أضف Custom domain
4. جاهز!

---

## ❓ مشاكل شائعة وحلولها:

**المشكلة:** "Permission denied"
**الحل:** استخدم Personal Access Token بدل كلمة المرور

**المشكلة:** الموقع لا يظهر
**الحل:** تأكد من اختيار branch `gh-pages` في Settings

**المشكلة:** الصفحة بيضاء
**الحل:** استخدم `--base-href "/portfolio/"` عند البناء

---

**موقعك جاهز للنشر! 🎉**

تحتاج مساعدة في أي خطوة؟ 😊

