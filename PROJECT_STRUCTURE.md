# بنية المشروع - Portfolio Website

```
my_protofolio/
│
├── lib/                          # مجلد الكود الرئيسي
│   ├── main.dart                 # نقطة البداية للتطبيق
│   │
│   ├── screens/                  # الشاشات
│   │   └── portfolio_screen.dart # الشاشة الرئيسية
│   │
│   ├── widgets/                  # المكونات القابلة لإعادة الاستخدام
│   │   ├── header_section.dart   # قسم الهيدر (الاسم والعنوان)
│   │   ├── about_section.dart    # قسم عني (النبذة التعريفية)
│   │   ├── experience_section.dart # قسم الخبرات والمشاريع
│   │   ├── skills_section.dart   # قسم المهارات والتقنيات
│   │   ├── education_section.dart # قسم التعليم
│   │   ├── contact_section.dart  # قسم التواصل
│   │   └── navigation_bar.dart   # شريط التنقل
│   │
│   ├── models/                   # نماذج البيانات
│   │   └── project.dart          # نموذج المشروع
│   │
│   ├── data/                     # البيانات الثابتة
│   │   └── portfolio_data.dart   # جميع بيانات البروتوفوليو
│   │
│   └── utils/                    # أدوات مساعدة
│       └── future_improvements.dart # أفكار للتحسينات
│
├── web/                          # ملفات الويب
│   ├── index.html                # ملف HTML الرئيسي (محسّن للـ SEO)
│   ├── manifest.json             # Web App Manifest
│   ├── favicon.png               # أيقونة الموقع
│   └── icons/                    # الأيقونات
│
├── android/                      # ملفات Android (اختياري)
├── ios/                          # ملفات iOS (اختياري)
├── linux/                        # ملفات Linux (اختياري)
├── macos/                        # ملفات macOS (اختياري)
├── windows/                      # ملفات Windows (اختياري)
│
├── test/                         # اختبارات الوحدة
│   └── widget_test.dart
│
├── pubspec.yaml                  # ملف التبعيات والإعدادات
├── pubspec.lock                  # قفل إصدارات الحزم
│
├── README.md                     # التوثيق الرئيسي
├── CUSTOMIZATION_GUIDE.md        # دليل التخصيص
├── PROJECT_SUMMARY.md            # ملخص المشروع
└── PROJECT_STRUCTURE.md          # هذا الملف
```

## شرح الملفات الرئيسية:

### lib/main.dart
- نقطة البداية للتطبيق
- إعداد الثيم والألوان
- إعداد Google Fonts

### lib/screens/portfolio_screen.dart
- الشاشة الرئيسية التي تحتوي على جميع الأقسام
- إدارة التمرير بين الأقسام
- عرض شريط التنقل

### lib/widgets/
- **header_section.dart**: العنوان الرئيسي مع تأثيرات الطباعة المتحركة
- **about_section.dart**: نبذة تعريفية مع إحصائيات
- **experience_section.dart**: عرض جميع المشاريع والخبرات (15 مشروع)
- **skills_section.dart**: المهارات والتقنيات والأدوات
- **education_section.dart**: المؤهلات الأكاديمية
- **contact_section.dart**: وسائل التواصل مع روابط فعالة
- **navigation_bar.dart**: شريط تنقل متجاوب (Desktop و Mobile)

### lib/data/portfolio_data.dart
- جميع البيانات الثابتة في مكان واحد
- سهل التعديل والتخصيص
- يحتوي على:
  - المعلومات الشخصية
  - قائمة المشاريع
  - المهارات والتقنيات
  - معلومات التعليم
  - اللغات

### lib/models/project.dart
- نموذج بيانات المشروع
- يحدد بنية بيانات كل مشروع

## الحزم المستخدمة:

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  google_fonts: ^6.2.1          # خطوط Google
  font_awesome_flutter: ^10.7.0 # أيقونات Font Awesome
  url_launcher: ^6.3.1          # فتح الروابط
  animated_text_kit: ^4.2.2     # رسوم متحركة للنصوص
```

## تدفق البيانات:

```
portfolio_data.dart
       ↓
  (البيانات)
       ↓
portfolio_screen.dart
       ↓
  (الأقسام)
       ↓
header_section.dart
about_section.dart
experience_section.dart
skills_section.dart
education_section.dart
contact_section.dart
```

## المميزات التقنية:

### 1. Responsive Design
- دعم جميع أحجام الشاشات
- تخطيط مختلف للـ Mobile والـ Desktop
- استخدام MediaQuery لتحديد حجم الشاشة

### 2. Navigation
- تنقل سلس بين الأقسام
- شريط تنقل ثابت في الأعلى (Desktop)
- شريط تنقل عائم في الأسفل (Mobile)

### 3. Animations
- تأثير الطباعة المتحرك (TypeWriter)
- تأثيرات التمرير
- تحولات سلسة بين الأقسام

### 4. SEO Optimization
- Meta tags محسّنة
- Open Graph tags للمشاركة
- عنوان ووصف محسّن

### 5. Performance
- استخدام const constructors
- تحميل الخطوط من Google Fonts
- تحسين الصور والأيقونات

## كيفية التعديل:

### لتغيير البيانات:
```dart
// في lib/data/portfolio_data.dart
static const String name = 'اسمك';
static const String email = 'your@email.com';
```

### لتغيير الألوان:
```dart
// في lib/main.dart
primarySwatch: Colors.blue, // غيّر اللون هنا
```

### لتغيير الخط:
```dart
// في lib/main.dart
textTheme: GoogleFonts.poppinsTextTheme(), // غيّر الخط هنا
```

### لإضافة مشروع جديد:
```dart
// في lib/data/portfolio_data.dart
Project(
  title: 'اسم المشروع',
  duration: 'التاريخ',
  location: 'الموقع',
  description: 'الوصف',
  achievements: ['إنجاز 1', 'إنجاز 2'],
),
```

## الأوامر المهمة:

```bash
# تشغيل التطبيق
flutter run -d chrome

# بناء للإنتاج
flutter build web

# تحديث الحزم
flutter pub get

# تنظيف المشروع
flutter clean

# التحقق من المشاكل
flutter doctor
```

## ملاحظات:

- الكود مُنظّم ونظيف
- يتبع أفضل ممارسات Flutter
- سهل الفهم والتعديل
- قابل للتوسع والتطوير
- موثّق بشكل جيد

---

لمزيد من التفاصيل، راجع:
- README.md - التوثيق الكامل
- CUSTOMIZATION_GUIDE.md - دليل التخصيص
- PROJECT_SUMMARY.md - ملخص المشروع

