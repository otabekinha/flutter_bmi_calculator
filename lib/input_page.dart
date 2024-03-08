import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const defaultColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(customColor: defaultColor),
                ),
                Expanded(child: ReusableCard(customColor: defaultColor)),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(customColor: defaultColor),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(customColor: defaultColor),
                ),
                Expanded(
                  child: ReusableCard(customColor: defaultColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    required this.customColor,
  });

  final Color customColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: customColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
