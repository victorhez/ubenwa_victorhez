import '../models/eightyeight_item_model.dart';
import 'package:ubenwa_victorhez/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/app_export.dart';

// ignore: must_be_immutable
class EightyeightItemWidget extends StatelessWidget {
  EightyeightItemWidget(
    this.eightyeightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightyeightItemModel eightyeightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 116.h,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 13.v,
          ),
          decoration: AppDecoration.outlineIndigo.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      decoration: IconButtonStyleHelper.fillBlue,
                      child: CustomImageView(
                        imagePath: eightyeightItemModelObj?.settings,
                      ),
                    ),
                    Container(
                      width: 57.h,
                      margin: EdgeInsets.only(left: 7.h),
                      child: Text(
                        eightyeightItemModelObj.numberOfCryEpisode!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                eightyeightItemModelObj.fortyFive!,
                style: CustomTextStyles.titleLargeBlack900,
              ),
              SizedBox(height: 10.v),
              Text(
                eightyeightItemModelObj.betterThan!,
                style: CustomTextStyles.interGreen800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
