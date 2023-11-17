import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/color_manager/color_manager.dart';
import '../../../../../../core/style_font_manager/style_manager.dart';
import '../../../../../../core/text_manager/text_manager.dart';

class CheckBoxSignup extends StatefulWidget {
  const CheckBoxSignup({super.key});

  @override
  State<CheckBoxSignup> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBoxSignup> {
  bool valueCheckBox = true;

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
              valueCheckBox = value!;
            });
          },
        ),
        Text('By checking the box you agree to our ',
            style: TextStyleManager.textStyle10w400),
        Text('Terms',
            style: TextStyleManager.textStyle10w400
                .copyWith(color: ColorManager.colorThird)),
        Text('and ', style: TextStyleManager.textStyle12w400),
        Text('Conditions.',
            style: TextStyleManager.textStyle10w400
                .copyWith(color: ColorManager.colorThird)),
      ],
    );
  }
}
