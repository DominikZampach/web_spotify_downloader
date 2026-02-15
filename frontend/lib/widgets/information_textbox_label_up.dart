import 'package:flutter/material.dart';

class InformationTextboxLabelUp extends StatelessWidget {
  final BuildContext context;
  final double verticalPadding;
  final String textUp;
  final TextEditingController controller;
  final double spacingGap;
  final bool alignOnLeft;

  final double fontSize;
  final double smallerFontSize;
  final double textBoxWidth;
  int? maxLines;

  InformationTextboxLabelUp({
    super.key,
    required this.context,
    required this.verticalPadding,
    required this.textUp,
    required this.controller,
    required this.spacingGap,
    required this.smallerFontSize,
    required this.fontSize,
    required this.textBoxWidth,
    this.alignOnLeft = false,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: verticalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: alignOnLeft
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          Text(
            textUp,
            style: TextStyle(
              fontSize: smallerFontSize,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(height: spacingGap),
          SizedBox(
            width: textBoxWidth,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(
                  context,
                ).primaryColor.withValues(alpha: 0.2),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: fontSize,
              ),
              maxLines: maxLines,
            ),
          ),
        ],
      ),
    );
  }
}
