import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String? subtitle; // Optional subtitle for vocation description
  final bool isSelected; // Whether the card is selected (used for vocation cards)
  final VoidCallback? onTap; // On tap function for both character and vocation cards
  final bool showIcon; // Whether to show the forward icon for character cards

  const CustomCard({
    super.key,
    required this.imagePath,
    required this.title,
    this.subtitle,
    this.isSelected = false,
    this.onTap,
    this.showIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: 80,
                colorBlendMode: isSelected ? BlendMode.color : null,
                color: isSelected ? Colors.black.withOpacity(0.8) : null,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Styledheading(title),
                    if (subtitle != null) StyledText(subtitle!), // Optional subtitle
                  ],
                ),
              ),
              if (showIcon)
                IconButton(
                  onPressed: onTap,
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Appcolors.textColor,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
