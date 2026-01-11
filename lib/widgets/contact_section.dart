import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/portfolio_data.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 100,
        vertical: isMobile ? 40 : 80,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).primaryColor.withOpacity(0.8),
            Theme.of(context).primaryColor.withOpacity(0.6),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.flutter_dash,
                size: 24,
                color: Colors.white.withOpacity(0.9),
              ),
              const SizedBox(width: 10),
              Text(
                'Do you know this website made with Flutter ? 😎',
                style: TextStyle(
                  fontSize: isMobile ? 28 : 36,
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          // Text(
          //   'Get In Touch',
          //   style: TextStyle(
          //     fontSize: isMobile ? 28 : 36,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.white,
          //   ),
          // ),
          // const SizedBox(height: 20),
          // Text(
          //   'Feel free to reach out for collaborations or just a friendly chat!',
          //   style: TextStyle(
          //     fontSize: isMobile ? 16 : 18,
          //     color: Colors.white.withOpacity(0.9),
          //   ),
          //   textAlign: TextAlign.center,
          // ),
          // const SizedBox(height: 40),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _ContactCard(
                icon: Icons.email,
                title: 'Email',
                value: PortfolioData.email,
                onTap: () => _launchUrl('mailto:${PortfolioData.email}'),
              ),
              _ContactCard(
                icon: Icons.phone,
                title: 'Phone',
                value: PortfolioData.phone,
                onTap: () => _launchUrl('tel:${PortfolioData.phone}'),
              ),
              _ContactCard(
                icon: Icons.business,
                title: 'LinkedIn',
                value: 'linkedin.com/in/inas-saab',
                onTap: () => _launchUrl('https://${PortfolioData.linkedin}'),
              ),
              _ContactCard(
                icon: Icons.code,
                title: 'GitHub',
                value: 'github.com/InasAlSaabb',
                onTap: () => _launchUrl('https://${PortfolioData.github}'),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Divider(color: Colors.white.withOpacity(0.3)),
          const SizedBox(height: 20),
          Text(
            '© 2025 Inas Saab. All rights reserved.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white.withOpacity(0.8),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Icon(
          //       Icons.flutter_dash,
          //       size: 24,
          //       color: Colors.white.withOpacity(0.9),
          //     ),
          //     const SizedBox(width: 10),
          //     Text(
          //       'Do you know this website made with Flutter?',
          //       style: TextStyle(
          //         fontSize: 14,
          //         color: Colors.white.withOpacity(0.8),
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class _ContactCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String value;
  final VoidCallback onTap;

  const _ContactCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.onTap,
  });

  @override
  State<_ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<_ContactCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 240,
          height: 160,
          padding: const EdgeInsets.all(20),
          transform: Matrix4.identity()
            ..translate(0.0, _isHovered ? -10.0 : 0.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: _isHovered
                    ? Theme.of(context).primaryColor.withOpacity(0.3)
                    : Colors.black.withOpacity(0.1),
                blurRadius: _isHovered ? 20 : 10,
                offset: Offset(0, _isHovered ? 8 : 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: _isHovered
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  widget.icon,
                  size: 28,
                  color: _isHovered
                      ? Colors.white
                      : Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: _isHovered
                      ? Theme.of(context).primaryColor
                      : Colors.grey[800],
                ),
              ),
              const SizedBox(height: 6),
              Text(
                widget.value,
                style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
