
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:x_station_app/core/assets_manager/assets_manager.dart';
import 'package:x_station_app/core/route_manager/page_name.dart';
import 'package:x_station_app/core/style_font_manager/style_manager.dart';
import 'package:x_station_app/core/text_manager/text_manager.dart';
import 'package:x_station_app/view/core_widget/xstation_button_custom/pinput_custom.dart';
// import 'package:pinput/pinput.dart';
import 'package:x_station_app/view/core_widget/xstation_button_custom/x_station_button_custom.dart';


class verification_widget extends StatelessWidget {
  const verification_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        
        
       Padding(padding: EdgeInsets.only(top: 94.h  , left: 21.w , right: 180.w),
       child:
        Text(TextManager.almostThere,style: TextStyleManager.textStyle24w500),
       ),
 Padding(padding: EdgeInsets.only(top: 26.h  , left: 22.w , right: 14.w),
       child:
        Text(TextManager.pleaseEnter, style: TextStyleManager.textStyle14w300),
 ),


       pinput(),

       Padding(padding: EdgeInsets.symmetric(horizontal: 33),
       child:
        XStationButtonCustom(textButton: TextManager.verify),
       ),

        Padding(padding: EdgeInsets.only(top: 62 , left: 57 , right: 33 ),
        child:
        Row(children: [
           Text(TextManager.didntReceive, style: TextStyleManager.textStyle14w700),
           SizedBox(width:11),
           Text(TextManager.resendAgain ,style: TextStyleManager.textStyle14w700),
               ],)
        ),
       
        SizedBox(height: 4.h),
        Text(TextManager.requestNew , style: TextStyleManager.textStyle12w400),



  Padding(
    padding: EdgeInsets.only(top: 257.h, left: 19.w  ,right: 290.w),
    child: InkWell(
                  onTap: () {
                    Get.toNamed(PageName.Loginscreen);    
                },
                  child:
            SvgPicture.asset(AssetsImage.push),
  
   ),
  ),



      ],
    );
  }
}