import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final VoidCallback onAboutTap;
  final VoidCallback onExperienceTap;
  final VoidCallback onSkillsTap;
  final VoidCallback onEducationTap;
  final VoidCallback? onCampaignTap;
  final VoidCallback onContactTap;

  const CustomNavigationBar({
    super.key,
    required this.onAboutTap,
    required this.onExperienceTap,
    required this.onSkillsTap,
    required this.onEducationTap,
    this.onCampaignTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    if (isMobile) {
      return Positioned(
        bottom: 20,
        left: 20,
        right: 20,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.grey[850]
                : Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _NavIconButton(
                icon: Icons.person,
                onTap: onAboutTap,
              ),
              _NavIconButton(
                icon: Icons.work,
                onTap: onExperienceTap,
              ),
              _NavIconButton(
                icon: Icons.code,
                onTap: onSkillsTap,
              ),
              _NavIconButton(
                icon: Icons.school,
                onTap: onEducationTap,
              ),
              _NavIconButton(
                icon: Icons.mail,
                onTap: onContactTap,
              ),
            ],
          ),
        ),
      );
    }

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.grey[900]?.withOpacity(0.95)
              : Colors.white.withOpacity(0.95),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _NavTextButton(
                text: 'About',
                onTap: onAboutTap,
              ),
              const SizedBox(width: 30),
              _NavTextButton(
                text: 'Experience',
                onTap: onExperienceTap,
              ),
              const SizedBox(width: 30),
              _NavTextButton(
                text: 'Skills',
                onTap: onSkillsTap,
              ),
              const SizedBox(width: 30),
              _NavTextButton(
                text: 'Education',
                onTap: onEducationTap,
              ),
              const SizedBox(width: 30),
              _NavTextButton(
                text: 'Contact',
                onTap: onContactTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const _NavTextButton({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class _NavIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _NavIconButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: onTap,
      color: Theme.of(context).primaryColor,
    );
  }
}

