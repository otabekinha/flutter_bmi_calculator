import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    required this.customColor,
    this.cardChild,
    this.onPress,
  });

  final Color customColor;
  final Widget? cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
