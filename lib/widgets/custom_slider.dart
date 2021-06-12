import 'package:flutter/material.dart';

class CustomSliderWidget extends StatelessWidget {
  final activeColor;
  final value;
  const CustomSliderWidget(
      {Key key, @required this.activeColor, @required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
          trackHeight: 5,
          disabledActiveTrackColor: activeColor,
          disabledInactiveTrackColor: Colors.grey[300],
          activeTrackColor: Colors.orange,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)),
      // ignore: missing_required_param
      child: Slider(
        value: value,
        min: 0,
        max: 1,
        divisions: 10,
      ),
    );
  }
}
