import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Slider && Chekcs"),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              min: 10,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: (value) {
                if (_sliderEnable) {
                  _sliderValue = value;
                  setState(() {});
                }
              },
            ),
            Checkbox(
                value: _sliderEnable,
                onChanged: (value) {
                  _sliderEnable = value ?? true;
                  setState(() {});
                }),
            CheckboxListTile(
                value: _sliderEnable,
                title: const Text("CheckboxListTile"),
                onChanged: (value) {
                  _sliderEnable = value ?? true;
                  setState(() {});
                }),
            Switch.adaptive(
                value: _sliderEnable,
                onChanged: (value) {
                  _sliderEnable = value;
                  setState(() {});
                }),
            SwitchListTile.adaptive(
                title: const Text("SwitchListTile"),
                value: _sliderEnable,
                onChanged: (value) {
                  _sliderEnable = value;
                  setState(() {});
                }),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      "https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_960_720.png"),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
          ],
        ));
  }
}
