# كيفية إضافة صورتك الشخصية

## الخطوات:

### 1. أضف مجلد assets في جذر المشروع
```
my_protofolio/
├── assets/
│   └── images/
│       └── profile.jpg  (ضع صورتك هنا)
├── lib/
├── web/
...
```

### 2. عدّل ملف pubspec.yaml

أضف هذا الكود في نهاية ملف `pubspec.yaml`:

```yaml
flutter:
  uses-material-design: true
  
  assets:
    - assets/images/
```

### 3. عدّل ملف lib/widgets/about_section.dart

ابحث عن هذا الكود (حوالي السطر 19-38):

```dart
Container(
  width: isMobile ? 120 : 150,
  height: isMobile ? 120 : 150,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
      color: Theme.of(context).primaryColor,
      width: 4,
    ),
    boxShadow: [
      BoxShadow(
        color: Theme.of(context).primaryColor.withOpacity(0.3),
        blurRadius: 20,
        spreadRadius: 5,
      ),
    ],
  ),
  child: ClipOval(
    child: Container(
      color: Colors.grey[300],
      child: Icon(
        Icons.person,
        size: isMobile ? 60 : 80,
        color: Colors.grey[600],
      ),
    ),
  ),
),
```

واستبدله بهذا الكود:

```dart
Container(
  width: isMobile ? 120 : 150,
  height: isMobile ? 120 : 150,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
      color: Theme.of(context).primaryColor,
      width: 4,
    ),
    boxShadow: [
      BoxShadow(
        color: Theme.of(context).primaryColor.withOpacity(0.3),
        blurRadius: 20,
        spreadRadius: 5,
      ),
    ],
  ),
  child: ClipOval(
    child: Image.asset(
      'assets/images/profile.jpg',  // اسم ملف صورتك
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: Colors.grey[300],
          child: Icon(
            Icons.person,
            size: isMobile ? 60 : 80,
            color: Colors.grey[600],
          ),
        );
      },
    ),
  ),
),
```

### 4. شغّل الأمر:
```bash
flutter pub get
```

### 5. أعد تشغيل التطبيق:
```bash
flutter run -d chrome
```

## ملاحظات:
- تأكد من أن اسم الصورة صحيح (profile.jpg أو profile.png)
- الصورة يجب أن تكون بجودة جيدة (على الأقل 300x300 بكسل)
- الصورة ستظهر على شكل دائرة
- إذا لم تجد الصورة، سيظهر الأيقونة الافتراضية

## أنواع الصور المدعومة:
- JPG/JPEG
- PNG
- WebP
- GIF (لكن لا ينصح به للصور الشخصية)

