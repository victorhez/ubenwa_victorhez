import '../models/ninetynine_item_model.dart';
import 'package:ubenwa_victorhez/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/app_export.dart';

// ignore: must_be_immutable
class NinetynineItemWidget extends StatelessWidget {
  NinetynineItemWidget(
    this.ninetynineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetynineItemModel ninetynineItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 171.h,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.all(18.h),
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomIconButton(
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillAmber,
                    child: CustomImageView(
                      imagePath: ninetynineItemModelObj?.thumbsUp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      top: 5.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      ninetynineItemModelObj.dailyChallenge!,
                      style: CustomTextStyles.labelMediumBlack900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.center,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  color: appTheme.gray200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.circleBorder54,
                  ),
                  child: Container(
                    height: 108.adaptSize,
                    width: 108.adaptSize,
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder54,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 108.v,
                            width: 87.h,
                            child: CircularProgressIndicator(
                              value: 0.5,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 16.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 14.h,
                              vertical: 17.v,
                            ),
                            decoration: AppDecoration.outlineBlack900.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder38,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ninetynineItemModelObj.eight!,
                                  textAlign: TextAlign.center,
                                  style:
                                      CustomTextStyles.titleLargeBluegray90001,
                                ),
                                Text(
                                  ninetynineItemModelObj.outOfTwelve!,
                                  style: CustomTextStyles.interBlack900,
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  ninetynineItemModelObj.hoursOfSilence!,
                                  style: CustomTextStyles.interBlack900,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.v),
            ],
          ),
        ),
      ),
    );
  }
}
