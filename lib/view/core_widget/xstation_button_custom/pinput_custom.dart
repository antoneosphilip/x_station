import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class pinput extends StatelessWidget {
  const pinput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 50.h),
      child: SizedBox(
        width: 350,
        height: 46,
        child: Pinput(
          length: 6,
        ),
      ),
    );
  }
}
