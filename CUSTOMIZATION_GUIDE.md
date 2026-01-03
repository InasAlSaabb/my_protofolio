# دليل التخصيص السريع

## كيفية تعديل البيانات الشخصية

### 1. المعلومات الأساسية

افتح ملف `lib/data/portfolio_data.dart` وقم بتعديل المعلومات التالية:

```dart
static const String name = 'اسمك هنا';
static const String title = 'المسمى الوظيفي';
static const String location = 'الموقع - المدينة';
static const String email = 'your@email.com';
static const String phone = '+963 XXX XXX XXX';
static const String linkedin = 'linkedin.com/in/your-profile';
static const String github = 'github.com/your-username';
```

### 2. النبذة التعريفية (Summary)

عدّل النص في:
```dart
static const String summary = 'نبذة تعريفية عنك...';
```

### 3. المهارات والتقنيات

أضف أو عدّل المهارات في القائمة:
```dart
static const List<String> technologies = [
  'Flutter',
  'Dart',
  'مهارة جديدة',
  // أضف المزيد
];
```

### 4. المشاريع

لإضافة مشروع جديد، أضف هذا الكود في قائمة `projects`:

```dart
Project(
  title: 'اسم المشروع',
  duration: '01.2024 – 06.2024',
  location: 'الموقع',
  description: 'وصف المشروع',
  achievements: [
    'إنجاز 1',
    'إنجاز 2',
    'إنجاز 3',
  ],
),
```

### 5. التعليم

عدّل معلومات التعليم:
```dart
static const String education =
    'درجة البكالوريوس في ...\n'
    'اسم الجامعة (التاريخ)\n'
    'التخصص: ...';
```

### 6. اللغات

أضف أو عدّل اللغات:
```dart
static const List<String> languages = [
  'العربية (اللغة الأم)',
  'الإنجليزية (متقدم)',
];
```

## تخصيص الألوان

افتح `lib/main.dart` وعدّل:

```dart
theme: ThemeData(
  primarySwatch: Colors.blue,  // غيّر اللون الأساسي هنا
  brightness: Brightness.light,
),
```

الألوان المتاحة:
- Colors.blue
- Colors.green
- Colors.purple
- Colors.red
- Colors.orange
- Colors.teal
- Colors.indigo

## تخصيص الخطوط

في `lib/main.dart`، يمكنك تغيير الخط:

```dart
textTheme: GoogleFonts.poppinsTextTheme(),
```

استبدل `poppins` بأي خط من Google Fonts:
- robotoTextTheme()
- openSansTextTheme()
- latoTextTheme()
- montserratTextTheme()
- ralewayTextTheme()

## إضافة صور للمشاريع (اختياري)

1. أضف مجلد `assets/images/` في جذر المشروع
2. ضع صور المشاريع في المجلد
3. في `pubspec.yaml`، أضف:

```yaml
flutter:
  assets:
    - assets/images/
```

4. في `lib/models/project.dart`، أضف حقل الصورة:

```dart
final String? imageUrl;
```

## نصائح مهمة

- ✅ احفظ الملفات بعد التعديل
- ✅ استخدم `flutter pub get` بعد تعديل pubspec.yaml
- ✅ استخدم `r` في Terminal للـ Hot Reload
- ✅ استخدم `R` للـ Hot Restart

## الأوامر الشائعة

```bash
# تشغيل التطبيق
flutter run -d chrome

# بناء للإنتاج
flutter build web

# تحديث الحزم
flutter pub get

# تنظيف المشروع
flutter clean
```

## المساعدة

إذا واجهت أي مشكلة:
1. تأكد من تثبيت Flutter بشكل صحيح
2. استخدم `flutter doctor` للتحقق
3. تأكد من الاتصال بالإنترنت لتحميل الخطوط
4. راجع ملف README.md للمزيد من التفاصيل

