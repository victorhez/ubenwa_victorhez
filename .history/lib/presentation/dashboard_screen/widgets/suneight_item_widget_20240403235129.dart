import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/app_export.dart';

import '../../../theme/app_decoration.dart';

class SunEightItemWidget extends StatelessWidget {
  const SunEightItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 171.h,
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
          color: Color(0xff4476F6)),
      child: Column(
        children: [
          SizedBox(
              height: 86.h, child: Image.asset(ImageConstant.img55703O8i8ae482)),

              SizedBox(height: 20.h,)
        ],
      ),
    );
  }
}
