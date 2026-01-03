import '../models/project.dart';

class PortfolioData {
  static const String name = 'Inas Saab';
  static const String title = 'Flutter Developer';
  static const String location = 'Syria - Homs';
  static const String email = 'inassaab0@gmail.com';
  static const String phone = '+963 982485621';
  static const String linkedin = 'linkedin.com/in/inas-saab';
  static const String github = 'www.github.com/InasAlSaabb';

  static const String summary =
      'Over 4 years of experience in IT, Mobile App Developer with a background '
      'in Computer and Automation Engineering and a passion for building '
      'high-quality, user-friendly applications for both Android and iOS using '
      'Flutter. Experienced in state management, API integration, and deployment '
      'processes. Known for strong problem-solving skills and a dedication to '
      'clean, efficient code.';

  static const List<String> technologies = [
    'Flutter',
    'Dart',
    'Bloc',
    'Firebase',
    'REST APIs',
    'Git & GitHub',
    'Google Maps',
    'Clean Architecture',
    'OOP',
    'State Management',
    'Hive',
    'FCM',
    'Unit Testing',
    'Postman',
  ];

  static const List<Project> projects = [
    Project(
      title: 'Asinnah Academy',
      duration: '06.2025 – present',
      location: 'Remote, Syria',
      description:
          'Academic mobile app for course management and learning materials',
      achievements: [
        'Course viewing, downloading materials, and purchasing functionality',
        'Telegram-based authentication system',
        'Bloc State Management implementation',
        'Smooth and responsive UI design',
      ],
    ),
    Project(
      title: 'Asinnah',
      duration: '06.2025 – present',
      location: 'Remote, Syria',
      description: 'Software engineering project with team collaboration',
      achievements: [
        'Team collaboration on feature design and implementation',
        'Clean, maintainable, and efficient code',
        'Bloc state management',
      ],
    ),
    Project(
      title: 'Event Management Platform',
      duration: '06.2025 – 09.2025',
      location: 'Homs, Syria',
      description:
          'Comprehensive event management system with mobile app and admin dashboard',
      achievements: [
        'Firebase authentication and real-time notifications',
        'Google Maps API integration for location tracking',
        'Stripe payment gateway integration',
        'Interactive chatbot for personalized event planning',
        'Achieved 95/100 grade, ranking first in class',
      ],
    ),
    Project(
      title: 'Task App',
      duration: '09.2024 – 01.2025',
      location: 'Remote, Syria',
      description: 'Task management application with notifications',
      achievements: [
        'Add, delete, modify tasks with notification controls',
        'Task filtering and completion tracking',
        'Google Maps integration for event location selection',
        'Daily, weekly, monthly statistics monitoring',
      ],
    ),
    Project(
      title: 'Velveta',
      duration: '05.2024 – 09.2024',
      location: 'Remote, Syria',
      description: 'Comprehensive e-commerce mobile application',
      achievements: [
        'Secure authentication with email verification',
        'Product catalog with detailed search functionality',
        'Shopping cart with customization options',
        'MyFatoorah payment gateway integration',
        'Enhanced user confidence by 90%',
      ],
    ),
    Project(
      title: 'Enaya App',
      duration: '01.2024 – 05.2024',
      location: 'Homs, Syria',
      description: 'Healthcare app for elderly patients',
      achievements: [
        'Medication and activity tracking system',
        'Personalized health advice',
        'Disease information and condition support',
        'Increased user satisfaction by 75%',
      ],
    ),
    Project(
      title: 'National Exam',
      duration: '08.2023 – 01.2024',
      location: 'Homs, Syria',
      description: 'Educational platform for national exam preparation',
      achievements: [
        'Practice tests and study materials access',
        'Personalized student pages with notifications',
        'Support for both registered and guest users',
        'Increased student preparedness by 80%',
      ],
    ),
    Project(
      title: 'E-commerce App',
      duration: '05.2023 – 08.2023',
      location: 'Homs, Syria',
      description: 'Online store with product management',
      achievements: [
        'Product showcase with category organization',
        'Shopping cart functionality',
        'Dynamic inventory management',
        'Increased user engagement by 75%',
      ],
    ),
  ];

  static const String education =
      'Bachelor of Information Technology Engineering\n'
      'Homs University (09.2020 – 11.2025)\n'
      'Specialization: Software Engineering and Information Systems';

  static const List<String> languages = [
    'Arabic (Native)',
    'English (Proficient)',
  ];

  static const List<String> additionalSkills = [
    'Version control systems',
    'Clean coding practices',
    'Sound architecture',
    'Agile methodologies',
  ];
}
