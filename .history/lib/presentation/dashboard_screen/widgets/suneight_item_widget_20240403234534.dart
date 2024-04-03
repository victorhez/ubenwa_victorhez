import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/app_export.dart';

import '../../../theme/app_decoration.dart';

class SunEightItemWidget extends StatelessWidget {
  const SunEightItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
         padding: EdgeInsets.all(18.h),
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
    );
  }
}
