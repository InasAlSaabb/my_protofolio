import 'package:flutter/material.dart';
import '../widgets/header_section.dart';
import '../widgets/about_section.dart';
import '../widgets/experience_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/education_section.dart';
import '../widgets/campaign_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/navigation_bar.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _educationKey = GlobalKey();
  final GlobalKey _campaignKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                const HeaderSection(),
                AboutSection(key: _aboutKey),
                ExperienceSection(key: _experienceKey),
                SkillsSection(key: _skillsKey),
                EducationSection(key: _educationKey),
                CampaignSection(key: _campaignKey),
                ContactSection(key: _contactKey),
              ],
            ),
          ),
          CustomNavigationBar(
            onAboutTap: () => _scrollToSection(_aboutKey),
            onExperienceTap: () => _scrollToSection(_experienceKey),
            onSkillsTap: () => _scrollToSection(_skillsKey),
            onEducationTap: () => _scrollToSection(_educationKey),
            onCampaignTap: () => _scrollToSection(_campaignKey),
            onContactTap: () => _scrollToSection(_contactKey),
          ),
        ],
      ),
    );
  }
}

