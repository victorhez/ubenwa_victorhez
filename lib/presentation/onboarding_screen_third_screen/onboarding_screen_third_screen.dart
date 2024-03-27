import 'package:ubenwa_victorhez/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'models/onboarding_screen_third_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/app_export.dart';
import 'bloc/onboarding_screen_third_bloc.dart';

class OnboardingScreenThirdScreen extends StatelessWidget {
  const OnboardingScreenThirdScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingScreenThirdBloc>(
        create: (context) => OnboardingScreenThirdBloc(
            OnboardingScreenThirdState(
                onboardingScreenThirdModelObj: OnboardingScreenThirdModel()))
          ..add(OnboardingScreenThirdInitialEvent()),
        child: OnboardingScreenThirdScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingScreenThirdBloc, OnboardingScreenThirdState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA70001,
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 37.v),
                  child: Column(children: [
                    SizedBox(
                        height: 764.v,
                        width: 425.h,
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  height: 57.adaptSize,
                                  width: 57.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 259.v, right: 31.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 9.h, vertical: 6.v),
                                  decoration: AppDecoration.fillIndigo.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder28),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.img55703O8i8ae48242x38,
                                      width: 38.h,
                                      alignment: Alignment.topCenter))),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle172,
                              width: 335.h,
                              alignment: Alignment.centerLeft),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  margin: EdgeInsets.only(right: 170.h),
                                  padding: EdgeInsets.only(
                                      left: 14.h, top: 125.v, right: 14.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                            height: 57.adaptSize,
                                            width: 57.adaptSize,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 7.h, vertical: 5.v),
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
                                                alignment: Alignment.topLeft)),
                                        SizedBox(height: 77.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 21.h),
                                            child: CustomIconButton(
                                                height: 57.adaptSize,
                                                width: 57.adaptSize,
                                                padding: EdgeInsets.all(9.h),
                                                decoration:
                                                    IconButtonStyleHelper
                                                        .fillIndigo,
                                                alignment: Alignment.centerLeft,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup12))),
                                        SizedBox(height: 76.v),
                                        CustomIconButton(
                                            height: 57.adaptSize,
                                            width: 57.adaptSize,
                                            padding: EdgeInsets.all(7.h),
                                            decoration: IconButtonStyleHelper
                                                .fillOnPrimaryContainer,
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgClose)),
                                        SizedBox(height: 43.v),
                                        Container(
                                            height: 5.v,
                                            margin: EdgeInsets.only(right: 6.h),
                                            child: AnimatedSmoothIndicator(
                                                activeIndex: 0,
                                                count: 4,
                                                effect: ScrollingDotsEffect(
                                                    spacing: 2.09,
                                                    activeDotColor:
                                                        appTheme.blue100,
                                                    dotColor:
                                                        appTheme.blue10001,
                                                    dotHeight: 5.v,
                                                    dotWidth: 5.h))),
                                        SizedBox(height: 43.v)
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 204.v),
                                  child: Text("msg_analytical_insight".tr,
                                      style: theme.textTheme.titleLarge))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  width: 320.h,
                                  margin: EdgeInsets.only(bottom: 114.v),
                                  child: Text("msg_be_your_baby_s_doctor".tr,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.bodyMedium!
                                          .copyWith(height: 1.36)))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 184.v,
                                  width: 202.h,
                                  margin: EdgeInsets.only(top: 197.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.h),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              fs.Svg(ImageConstant.imgGroup4),
                                          fit: BoxFit.cover)),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.img7andH3k0160219,
                                      height: 161.v,
                                      radius: BorderRadius.circular(100.h),
                                      alignment: Alignment.bottomCenter)))
                        ])),
                    SizedBox(height: 45.v),
                    _buildPrevious(context),
                    SizedBox(height: 5.v)
                  ]))));
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

  /// Navigates to the onboardingScreen2Screen when the action is triggered.
  onTapTxtPrevious(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingScreen2Screen,
    );
  }

  /// Navigates to the onboardingScreenFourthScreen when the action is triggered.
  onTapTxtNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingScreenFourthScreen,
    );
  }
}
