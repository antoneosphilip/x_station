import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color_manager/color_manager.dart';
import '../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../core/text_manager/text_manager.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBoxWidget> {
  bool valueCheckBox=true;

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Checkbox(
          activeColor: ColorManager.colorPrimary,
          splashRadius: Checkbox.width,
          value: valueCheckBox,
          onChanged: (value) {
            setState(() {
              valueCheckBox=value!;
            });
          },
        ),
        Text(TextManager.rememberMe,
            style: TextStyleManager.textStyle12w400),
        const Spacer(),
        Text(
            TextManager.forgetPassword,
            style: TextStyleManager.textStyle12w400.copyWith(color:ColorManager.colorThird)
        )],
    );
  }
}
