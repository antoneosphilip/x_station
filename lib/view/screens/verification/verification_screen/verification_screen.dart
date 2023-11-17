


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_station_app/view/screens/verification/verification_widget/verification_widget.dart';

class verification_screen extends StatelessWidget {
  const verification_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
        child: verification_widget(),
      ),
    );
  }
}