import 'package:flutter/material.dart';

import '../../core/app_colors/app_colors.dart';
import '../../core/text_styles/text_styles.dart';

class CustomButtom extends StatefulWidget {
  final String name;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  const CustomButtom({
    super.key,
    required this.name,
    required this.onPressed,
    this.color = green,
    this.textColor = white,
  });

  @override
  State<CustomButtom> createState() => _CustomButtomState();
}

class _CustomButtomState extends State<CustomButtom> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Text(
        widget.name,
        style: AppTextStyles()
            .normalText(fontSize: 18)
            .textColorNormal(widget.textColor),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.color,
        fixedSize: Size(
          isPortrait ? screenWidth : screenWidth * 0.5,
          isPortrait ? 55 : 60,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
