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
              height: 86.h,
              child: Image.asset(ImageConstant.img55703O8i8ae482)),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "msg_next_predicted_cry".tr,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "lbl_12_40_14_30".tr,
            style: TextStyle(
                color: appTheme.amber500,
                fontSize: 20.adaptSize,
                fontWeight: FontWeight.bold),
          ),
          Container(
            height: 23.h,
            width: 99.v,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(4.86)),
          )
        ],
      ),
    );
  }
}
