import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/portfolio_data.dart';

class CampaignSection extends StatelessWidget {
  const CampaignSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 100,
        vertical: isMobile ? 60 : 100,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).primaryColor.withOpacity(0.1),
            Theme.of(context).primaryColor.withOpacity(0.05),
            Theme.of(context).scaffoldBackgroundColor,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Main Title
          Text(
            PortfolioData.campaignTitle,
            style: TextStyle(
              fontSize: isMobile ? 32 : 48,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
              height: 1.2,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),

          // Subtitle
          Text(
            PortfolioData.campaignSubtitle,
            style: TextStyle(
              fontSize: isMobile ? 20 : 24,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.grey[300]
                  : Colors.grey[800],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),

          // Description
          Container(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Text(
              PortfolioData.campaignDescription,
              style: TextStyle(
                fontSize: isMobile ? 16 : 18,
                height: 1.6,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey[400]
                    : Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 50),

          // Highlights Grid
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: PortfolioData.campaignHighlights.map((highlight) {
              return _HighlightCard(
                text: highlight,
                isMobile: isMobile,
              );
            }).toList(),
          ),
          const SizedBox(height: 60),

          // Call to Action Button
          _CtaButton(
            isMobile: isMobile,
            onPressed: () async {
              final Uri emailUri = Uri(
                scheme: 'mailto',
                path: PortfolioData.email,
                queryParameters: {
                  'subject': 'Project Collaboration Inquiry',
                  'body': 'Hi Inas,\n\nI\'m interested in discussing a Flutter development project with you. '
                      'I\'d like to learn more about your experience and discuss how we can work together.\n\n'
                      'Looking forward to your response!\n\nBest regards,',
                },
              );

              if (await canLaunchUrl(emailUri)) {
                await launchUrl(emailUri);
              }
            },
          ),

          const SizedBox(height: 20),

          // CTA Description
          Text(
            PortfolioData.campaignCtaDescription,
            style: TextStyle(
              fontSize: isMobile ? 14 : 16,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.grey[500]
                  : Colors.grey[600],
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _HighlightCard extends StatefulWidget {
  final String text;
  final bool isMobile;

  const _HighlightCard({
    required this.text,
    required this.isMobile,
  });

  @override
  State<_HighlightCard> createState() => _HighlightCardState();
}

class _HighlightCardState extends State<_HighlightCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: widget.isMobile ? double.infinity : 300,
        padding: const EdgeInsets.all(20),
        transform: Matrix4.identity()
          ..translate(0.0, _isHovered ? -5.0 : 0.0),
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.grey[850]
              : Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).primaryColor.withOpacity(
                _isHovered ? 0.3 : 0.1,
              ),
              blurRadius: _isHovered ? 15 : 10,
              offset: Offset(0, _isHovered ? 5 : 2),
              spreadRadius: _isHovered ? 1 : 0,
            ),
          ],
          border: Border.all(
            color: Theme.of(context).primaryColor.withOpacity(
              _isHovered ? 0.5 : 0.2,
            ),
            width: 1,
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: widget.isMobile ? 16 : 18,
            fontWeight: FontWeight.w500,
            color: _isHovered
                ? Theme.of(context).primaryColor
                : Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey[300]
                    : Colors.grey[800],
            height: 1.4,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _CtaButton extends StatefulWidget {
  final bool isMobile;
  final VoidCallback onPressed;

  const _CtaButton({
    required this.isMobile,
    required this.onPressed,
  });

  @override
  State<_CtaButton> createState() => _CtaButtonState();
}

class _CtaButtonState extends State<_CtaButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.identity()
          ..scale(_isHovered ? 1.05 : 1.0),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: widget.isMobile ? 40 : 60,
              vertical: widget.isMobile ? 18 : 24,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            elevation: _isHovered ? 8 : 4,
            shadowColor: Theme.of(context).primaryColor.withOpacity(0.5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                PortfolioData.campaignCtaText,
                style: TextStyle(
                  fontSize: widget.isMobile ? 18 : 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 12),
              Icon(
                Icons.arrow_forward,
                size: widget.isMobile ? 20 : 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}