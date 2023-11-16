import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:x_station_app/core/assets_manager/assets_manager.dart';
import 'package:x_station_app/core/color_manager/color_manager.dart';
import 'package:x_station_app/core/route_manager/page_name.dart';
import 'package:x_station_app/core/style_font_manager/style_manager.dart';
import 'package:x_station_app/core/text_manager/text_manager.dart';
import 'package:x_station_app/view/core_widget/text_form_field/text_form_field_custom.dart';
import 'package:x_station_app/view/core_widget/xstation_button_custom/x_station_button_custom.dart';
import 'package:x_station_app/view/screens/Signup/Singup_widget/check_box_sin/checkbox_sign.dart';
import 'package:x_station_app/view/screens/login/login_widget/check_box/check_box.dart';

class SinupForm extends StatelessWidget {
  const SinupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(children: [
        TextFormFieldCustom(
          keyboardType: TextInputType.name,
          validate: (value) {},
          label: TextManager.firstname,
          suffix: true,
          suffixIcon: SvgPicture.asset(AssetsImage.user),
        ),
        SizedBox(
          height: 19.h,
        ),
        TextFormFieldCustom(
          keyboardType: TextInputType.name,
          validate: (value) {},
          label: TextManager.lastname,
          suffix: true,
          suffixIcon: SvgPicture.asset(AssetsImage.user),
        ),
        SizedBox(
          height: 19.h,
        ),
        TextFormFieldCustom(
          keyboardType: TextInputType.name,
          validate: (value) {},
          label: TextManager.username,
          suffix: true,
          suffixIcon: SvgPicture.asset(AssetsImage.user),
        ),
        SizedBox(
          height: 19.h,
        ),
        TextFormFieldCustom(
          keyboardType: TextInputType.emailAddress,
          validate: (value) {},
          label: TextManager.validemail,
          suffix: true,
          suffixIcon: SvgPicture.asset(AssetsImage.email),
        ),
        SizedBox(
          height: 19.h,
        ),
        TextFormFieldCustom(
          keyboardType: TextInputType.phone,
          validate: (value) {},
          label: TextManager.phonenumber,
          suffix: true,
          suffixIcon: SvgPicture.asset(AssetsImage.phonenumber),
        ),
        SizedBox(
          height: 49.h,
        ),
        const CheckBoxSignup(),
        SizedBox(
          height: 21.h,
        ),
        const XStationButtonCustom(textButton: TextManager.continuee),
        SizedBox(
          height: 23.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              TextManager.alreadymember,
              style: TextStyleManager.textStyle12w400
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 3.w,
            ),
            InkWell(
              onTap: () {
                Get.toNamed(PageName.login);
              },
              child: Text(
                TextManager.login,
                style: TextStyleManager.textStyle12w400.copyWith(
                    fontWeight: FontWeight.w700,
                    color: ColorManager.colorPrimary),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
