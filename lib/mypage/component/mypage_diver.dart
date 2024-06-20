import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/const/color.dart';

class MyPageDiver extends StatelessWidget {
  const MyPageDiver({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 8.w,
      color: diverColor,
    );
  }
}
