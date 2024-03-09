import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData? customIcon;
  final String? customText;
  const IconContent({
    Key? key,
    this.customIcon,
    this.customText,
  }) : super(key: key);

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
