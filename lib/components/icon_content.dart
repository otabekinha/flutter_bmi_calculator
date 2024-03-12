import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';



class IconContent extends StatelessWidget {
  final IconData? customIcon;
  final String? customText;
  const IconContent({
    super.key,
    this.customIcon,
    this.customText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (customIcon != null)
          Icon(
            customIcon,
            size: 80.0,
          ),
        if (customText != null)
          const SizedBox(
            height: 15,
          ),
        if (customText != null)
          Text(
            customText!,
            style: labelTextStyle,
          )
      ],
    );
  }
}
