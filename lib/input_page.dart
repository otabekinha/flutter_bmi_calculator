import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    customColor: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: const IconContent(
                      customIcon: FontAwesomeIcons.mars,
                      customText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    customColor: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: const IconContent(
                      customIcon: FontAwesomeIcons.venus,
                      customText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              customColor: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: numberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      customColor: activeCardColor, cardChild: IconContent()),
                ),
                Expanded(
                  child: ReusableCard(
                      customColor: activeCardColor, cardChild: IconContent()),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
