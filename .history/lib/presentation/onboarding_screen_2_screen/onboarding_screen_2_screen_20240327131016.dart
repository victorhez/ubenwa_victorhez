import 'package:ubenwa_victorhez/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'models/onboarding_screen_2_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/app_export.dart';
import 'bloc/onboarding_screen_2_bloc.dart';

class OnboardingScreen2Screen extends StatelessWidget {
  const OnboardingScreen2Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingScreen2Bloc>(
        create: (context) => OnboardingScreen2Bloc(OnboardingScreen2State(
            onboardingScreen2ModelObj: OnboardingScreen2Model()))
          ..add(OnboardingScreen2InitialEvent()),
        child: OnboardingScreen2Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingScreen2Bloc, OnboardingScreen2State>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA70001,
              body: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 37.v),
                    child: Column(children: [
                      SizedBox(
                          height: 764.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle181,
                                width: 341.h,
                                alignment: Alignment.centerRight),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle171,
                                width: 425.h,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    margin: EdgeInsets.only(right: 83.h),
                                    padding: EdgeInsets.only(
                                        left: 26.h, top: 125.v, right: 26.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                              height: 57.adaptSize,
                                              width: 57.adaptSize,
                                              margin:
                                                  EdgeInsets.only(right: 78.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 9.h,
                                                  vertical: 6.v),
                                              decoration: AppDecoration
                                                  .fillIndigo
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder28),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img55703O8i8ae48242x38,
                                                  width: 38.h,
                                                  alignment:
                                                      Alignment.topCenter)),
                                          SizedBox(height: 15.v),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.h, right: 3.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                        height: 57.adaptSize,
                                                        width: 57.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            top: 61.v,
                                                            bottom: 66.v),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 7.h,
                                                                vertical: 5.v),
                                                        decoration: AppDecoration
                                                            .fillDeepOrange
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder28),
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .img55703O8i8ae48242x40,
                                                            width: 40.h,
                                                            alignment: Alignment
                                                                .topLeft)),
                                                    Container(
                                                        height: 184.v,
                                                        width: 202.h,
                                                        margin: EdgeInsets.only(
                                                            left: 21.h),
                                                        padding:
                                                            EdgeInsets.symmetric(
                                                                horizontal:
                                                                    34.h),
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: fs.Svg(
                                                                    ImageConstant
                                                                        .imgGroup4Indigo50),
                                                                fit: BoxFit
                                                                    .cover)),
                                                        child: CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .img183611,
                                                            width: 134.h,
                                                            radius:
                                                                BorderRadius.circular(
                                                                    100.h),
                                                            alignment:
                                                                Alignment.center))
                                                  ])),
                                          SizedBox(height: 10.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 78.h),
                                              child: CustomIconButton(
                                                  height: 57.adaptSize,
                                                  width: 57.adaptSize,
                                                  padding: EdgeInsets.all(9.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .fillPrimary,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup12))),
                                          SizedBox(height: 43.v),
                                          Container(
                                              height: 5.v,
                                              margin:
                                                  EdgeInsets.only(right: 84.h),
                                              child: AnimatedSmoothIndicator(
                                                  activeIndex: 0,
                                                  count: 4,
                                                  effect: ScrollingDotsEffect(
                                                      spacing: 2.09,
                                                      activeDotColor:
                                                          appTheme.blue10001,
                                                      dotColor: theme
                                                          .colorScheme.primary,
                                                      dotHeight: 5.v,
                                                      dotWidth: 16.h))),
                                          SizedBox(height: 43.v),
                                         
                                          SizedBox(height: 70.v)
                                        ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    width: 271.h,
                                    margin: EdgeInsets.only(bottom: 105.v),
                                    child: Text(
                                        "msg_now_with_great_feedbacks".tr,
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(height: 1.36)))),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 259.v, right: 34.h),
                                child: CustomIconButton(
                                    height: 57.adaptSize,
                                    width: 57.adaptSize,
                                    padding: EdgeInsets.all(7.h),
                                    alignment: Alignment.topRight,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgClose)))
                          ])),
                      SizedBox(height: 45.v),
                      _buildPrevious(context),
                      SizedBox(height: 5.v)
                    ])),
              )));
    });
  }

  /// Section Widget
  Widget _buildPrevious(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                onTapTxtPrevious(context);
              },
              child:
                  Text("lbl_previous".tr, style: theme.textTheme.titleMedium)),
          GestureDetector(
              onTap: () {
                onTapTxtNext(context);
              },
              child: Text("lbl_next".tr,
                  style: CustomTextStyles.titleMediumPrimary))
        ]));
  }

  /// Navigates to the onboarding1Screen when the action is triggered.
  onTapTxtPrevious(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboarding1Screen,
    );
  }

  /// Navigates to the onboardingScreenThirdScreen when the action is triggered.
  onTapTxtNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingScreenThirdScreen,
    );
  }
}
