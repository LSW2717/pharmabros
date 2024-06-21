import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/color.dart';

class CustomDiver extends StatelessWidget {
  const CustomDiver({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 8.w,
      color: diverColor1,
    );
  }
}
