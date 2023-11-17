import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_station_app/view/screens/verification/verification_screen/verification_screen.dart';

import '../../../core/assets_manager/assets_manager.dart';
import '../../../core/color_manager/color_manager.dart';
import '../../../core/text_manager/text_manager.dart';
import '../elevated_button/elevated_button_custom.dart';

class XStationButtonCustom extends StatelessWidget {
  final String textButton;

  const XStationButtonCustom({super.key,  this.textButton=TextManager.next});
  @override
  Widget build(BuildContext context) {
    return ElevatedButtonCustom(
      onPressed: (){
        Navigator.push(context,  MaterialPageRoute(builder: (context) =>(verification_screen())));
      },
      // onPressed: (){
      //        final A = MaterialPageRoute(builder: (context) =>(verification_screen()));
      //       Navigator.push(context, A);
          
      // },
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(textButton!),
          SizedBox(width: 11.w,),
          SvgPicture.asset(AssetsImage.arrowRight),
        ],
      ),
      colors: ColorManager.colorPrimary,
    );
  }
}
