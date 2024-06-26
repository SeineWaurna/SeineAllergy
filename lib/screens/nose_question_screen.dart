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

//Nost Question

class NoseQuestionScreen extends StatefulWidget {
  const NoseQuestionScreen({super.key});
  @override
  State<NoseQuestionScreen> createState() => _NoseQuestionScreenState();
}

class _NoseQuestionScreenState extends State<NoseQuestionScreen> {
  double _dailyQuestion1 = 0;
  double _dailyQuestion2 = 0;
  double _dailyQuestion3 = 0;
  double _dailyQuestion4 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, BoxConstraints boxConstraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    Languages.of(context)!.noseSickness,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                itemOne(boxConstraints, context),
                const SizedBox(
                  height: 20,
                ),
                itemTwo(boxConstraints, context),
                const SizedBox(
                  height: 20,
                ),
                itemThree(boxConstraints, context),
                const SizedBox(
                  height: 20,
                ),
                itemFour(boxConstraints, context),
                const SizedBox(
                  height: 30,
                ),
                saveButton(context),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  Center saveButton(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 20.w,
        height: 5.h,
        child: GFButton(
          shape: GFButtonShape.pills,
          type: GFButtonType.outline2x,
          onPressed: () {
            //List<double> eyeValue = [_dailyQuestion5, _dailyQuestion6, _dailyQuestion7];
            Map<String, double> noseValue = {
              "_dailyQuestion1": _dailyQuestion1,
              "_dailyQuestion2": _dailyQuestion2,
              "_dailyQuestion3": _dailyQuestion3,
              "_dailyQuestion4": _dailyQuestion4,
            };
            Navigator.pop(context, noseValue);
          },
          child: Text(
            Languages.of(context)!.saveDailyquestion,
            style: TextStyle(fontSize: 12.sp),
          ),
        ),
      ),
    );
  }

  Container itemFour(BoxConstraints boxConstraints, BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(horizontal: 16),
    decoration: AppConstant().gradientBox(),
      width: boxConstraints.maxWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  Languages.of(context)!.dailyQuestion4,
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
                    Languages.of(context)!.dailyQuestion4_1,
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
                  initialValue: _dailyQuestion4,
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
                      _dailyQuestion4 = value!;
                    });
                  },
                  onChangeStart: (value) {
                    setState(() {
                      _dailyQuestion4 = value;
                    });
                  },
                  onChangeEnd: (value) {
                    setState(() {
                      _dailyQuestion4 = value;
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
    );
  }

  Container itemThree(BoxConstraints boxConstraints, BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(horizontal: 16),
    decoration: AppConstant().gradientBox(),
      width: boxConstraints.maxWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  Languages.of(context)!.dailyQuestion3,
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
                    Languages.of(context)!.dailyQuestion3_1,
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
                  initialValue: _dailyQuestion3,
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
                      _dailyQuestion3 = value!;
                    });
                  },
                  onChangeStart: (value) {
                    setState(() {
                      _dailyQuestion3 = value;
                    });
                  },
                  onChangeEnd: (value) {
                    setState(() {
                      _dailyQuestion3 = value;
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
    );
  }

  Container itemTwo(BoxConstraints boxConstraints, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: AppConstant().linearBox(),
      width: boxConstraints.maxWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  Languages.of(context)!.dailyQuestion2,
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
                    Languages.of(context)!.dailyQuestion2_1,
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
                  initialValue: _dailyQuestion2,
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
                      _dailyQuestion2 = value!;
                    });
                  },
                  onChangeStart: (value) {
                    setState(() {
                      _dailyQuestion2 = value;
                    });
                  },
                  onChangeEnd: (value) {
                    setState(() {
                      _dailyQuestion2 = value;
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
    );
  }

  Container itemOne(BoxConstraints boxConstraints, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: AppConstant().pictureBox(),
      width: boxConstraints.maxWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  Languages.of(context)!.dailyQuestion1,
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
                padding: const EdgeInsets.only(left: 20, bottom: 16),
                child: SizedBox(
                  width: boxConstraints.maxWidth - 55,
                  child: Text(
                    Languages.of(context)!.dailyQuestion1_1,
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
                  initialValue: _dailyQuestion1,
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
                    contentPadding: EdgeInsets.only(bottom: 11, top: 11),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _dailyQuestion1 = value!;
                    });
                  },
                  onChangeStart: (value) {
                    setState(() {
                      _dailyQuestion1 = value;
                    });
                  },
                  onChangeEnd: (value) {
                    setState(() {
                      _dailyQuestion1 = value;
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
    );
  }

  Positioned displayNumber(BoxConstraints boxConstraints) {
    return Positioned(
      left: 18,
      bottom: 67,
      child: SizedBox(
        child: SizedBox(
          width: boxConstraints.maxWidth * 0.9 - 36,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.blue, Colors.green]),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            // color: Colors.grey,
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
      ),
    );
  }

  Positioned displayFace(BoxConstraints boxConstraints) {
    return Positioned(
      left: 18,
      bottom: 27,
      child: SizedBox(
        child: SizedBox(
          width: boxConstraints.maxWidth * 0.9 - 36,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: AppConstant.pathFaces
                .map((e) => WidgetImage(
                      path: e,
                      size: 20,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
