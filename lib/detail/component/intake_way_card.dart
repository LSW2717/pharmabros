import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmabros/detail/model/in_take_method_model.dart';

import '../../common/const/color.dart';
import '../../common/const/typography.dart';

class IntakeWayCard extends StatelessWidget {
  final InTakeMethod inTakeMethod;

  const IntakeWayCard({
    required this.inTakeMethod,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 64.w,
      padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 20.w),
      margin: EdgeInsets.only(top: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: mainColor1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'asset/svg/${_getSvg(inTakeMethod.time)}.svg',
                width: 40.w,
                height: 40.w,
              ),
              SizedBox(width: 8.w),
              Text(inTakeMethod.time, style: bodyText2),
            ],
          ),
          Row(
            children: [
              Container(
                height: 22.w,
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: _getButtonColor(inTakeMethod.detailTime),
                ),
                child: Center(
                  child: Text(
                    inTakeMethod.detailTime,
                    style: bodyText3.copyWith(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                inTakeMethod.intakeUnit,
                style: bodyText1.copyWith(color: mainColor3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
String _getSvg(String time){
  if(time == '아침'){
    return 'Morning';
  }else if (time == '점심'){
    return 'Noon';
  } else{
    return 'Night';
  }
}

Color _getButtonColor(String detailTime){
  if (detailTime == '식전'){
    return buttonColor2;
  } else if (detailTime == '식후'){
    return buttonColor1;
  } else {
    return mainColor3;
  }
}