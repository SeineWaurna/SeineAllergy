import 'package:allergic_app/utility/app_constant.dart';
import 'package:allergic_app/views/widget_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../localization/language/languages.dart';

class EyeQuestionScreen extends StatefulWidget {
  const EyeQuestionScreen({super.key});
  @override
  State<EyeQuestionScreen> createState() => _EyeQuestionScreenState();
}

class _EyeQuestionScreenState extends State<EyeQuestionScreen> {
  double _dailyQuestion5 = 0;
  double _dailyQuestion6 = 0;
  double _dailyQuestion7 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, BoxConstraints boxConstraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                displayTitle(context),
                const SizedBox(
                  height: 20,
                ),
                displayScore(context),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  width: boxConstraints.maxWidth,


                  decoration: AppConstant().gradientBox(),


                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              Languages.of(context)!.dailyQuestion5,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      LayoutBuilder(
                          builder: (context, BoxConstraints boxConstraints) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: boxConstraints.maxWidth - 40,
                                child: Text(
                                  Languages.of(context)!.dailyQuestion5_1,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: boxConstraints.maxWidth * 0.9,
                        child: Stack(
                          children: [
                            FormBuilderSlider(
                              name: 'slider',
                              min: 0,
                              max: 10,
                              initialValue: _dailyQuestion5,
                              divisions: 10,
                              activeColor: Colors.redAccent,
                              inactiveColor: Colors.pink[100],
                              displayValues: DisplayValues.current,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 11, top: 11, right: 15),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _dailyQuestion5 = value!;
                                });
                              },
                              onChangeStart: (value) {
                                setState(() {
                                  _dailyQuestion5 = value;
                                });
                              },
                              onChangeEnd: (value) {
                                setState(() {
                                  _dailyQuestion5 = value;
                                });
                              },
                              numberFormat: NumberFormat('#'),
                            ),
                            displayFace(boxConstraints),
                            displayNumber(boxConstraints),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16),
                  width: boxConstraints.maxWidth,
                  decoration: AppConstant().gradientBox(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              Languages.of(context)!.dailyQuestion6,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: SizedBox(
                              width: boxConstraints.maxWidth - 40,
                              child: Text(
                                Languages.of(context)!.dailyQuestion6_1,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: boxConstraints.maxWidth * 0.9,
                        child: Stack(
                          children: [
                            FormBuilderSlider(
                              name: 'slider',
                              min: 0,
                              max: 10,
                              initialValue: _dailyQuestion6,
                              divisions: 10,
                              activeColor: Colors.redAccent,
                              inactiveColor: Colors.pink[100],
                              displayValues: DisplayValues.current,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                  // left: 15,
                                  bottom: 11,
                                  top: 11,
                                  // right: 15,
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _dailyQuestion6 = value!;
                                });
                              },
                              onChangeStart: (value) {
                                setState(() {
                                  _dailyQuestion6 = value;
                                });
                              },
                              onChangeEnd: (value) {
                                setState(() {
                                  _dailyQuestion6 = value;
                                });
                              },
                              numberFormat: NumberFormat('#'),
                            ),
                            displayFace(boxConstraints),
                            displayNumber(boxConstraints),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  width: boxConstraints.maxWidth,
                  decoration: AppConstant().linearBox(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              Languages.of(context)!.dailyQuestion7,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: SizedBox(
                              width: boxConstraints.maxWidth - 55,
                              child: Text(
                                Languages.of(context)!.dailyQuestion7_1,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: boxConstraints.maxWidth * 0.9,
                        child: Stack(
                          children: [
                            FormBuilderSlider(
                              name: 'slider',
                              min: 0,
                              max: 10,
                              initialValue: _dailyQuestion7,
                              divisions: 10,
                              activeColor: Colors.redAccent,
                              inactiveColor: Colors.pink[100],
                              displayValues: DisplayValues.current,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                  // left: 15,
                                  bottom: 11,
                                  top: 11,
                                  // right: 15,
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _dailyQuestion7 = value!;
                                });
                              },
                              onChangeStart: (value) {
                                setState(() {
                                  _dailyQuestion7 = value;
                                });
                              },
                              onChangeEnd: (value) {
                                setState(() {
                                  _dailyQuestion7 = value;
                                });
                              },
                              numberFormat: NumberFormat('#'),
                            ),
                            displayFace(boxConstraints),
                            displayNumber(boxConstraints),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: GFButton(
                    type: GFButtonType.outline2x,
                    shape: GFButtonShape.pills,
                    text: Languages.of(context)!.saveDailyquestion,
                    textStyle:
                        TextStyle(fontSize: 12.sp, color: GFColors.PRIMARY),
                    onPressed: () {
                      //List<double> eyeValue = [_dailyQuestion5, _dailyQuestion6, _dailyQuestion7];
                      Map<String, double> eyeValue = {
                        "_dailyQuestion5": _dailyQuestion5,
                        "_dailyQuestion6": _dailyQuestion6,
                        "_dailyQuestion7": _dailyQuestion7,
                      };
                      Navigator.pop(context, eyeValue);
                    },
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  Positioned displayFace(BoxConstraints boxConstraints) {
    return Positioned(
      left: 18,
      bottom: 27,
      child: SizedBox(
        width: boxConstraints.maxWidth * 0.9 - 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: AppConstant.pathFaces
              .map((e) => WidgetImage(
                    path: e,
                    size: 18,
                  ))
              .toList(),
        ),
      ),
    );
  }

  Positioned displayNumber(BoxConstraints boxConstraints) {
    return Positioned(
      left: 18,
      bottom: 67,
      child: SizedBox(
        width: boxConstraints.maxWidth * 0.9 - 36,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          //color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: AppConstant.numbers
                .map(
                  (e) => Container(
                    alignment: Alignment.center,
                    width: 18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Text(
                      e.toString(),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  Padding displayScore(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        Languages.of(context)!.eyeSickness,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Row displayTitle(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: Text(
            Languages.of(context)!.questionDaily,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.close),
        ),
      ],
    );
  }
}
