import 'package:ubenwa_victorhez/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ubenwa_victorhez/widgets/custom_elevated_button.dart';
import 'models/onboarding_screen_fourth_model.dart';
import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/app_export.dart';
import 'bloc/onboarding_screen_fourth_bloc.dart';

class OnboardingScreenFourthScreen extends StatelessWidget {
  const OnboardingScreenFourthScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingScreenFourthBloc>(
        create: (context) => OnboardingScreenFourthBloc(
            OnboardingScreenFourthState(
                onboardingScreenFourthModelObj: OnboardingScreenFourthModel()))
          ..add(OnboardingScreenFourthInitialEvent()),
        child: OnboardingScreenFourthScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingScreenFourthBloc, OnboardingScreenFourthState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA70001,
              body: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 37.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 764.v,
                              width: 404.h,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle182,
                                        width: 348.h,
                                        alignment: Alignment.centerLeft),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            margin:
                                                EdgeInsets.only(right: 146.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 17.h,
                                                vertical: 125.v),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  CustomIconButton(
                                                      height: 57.adaptSize,
                                                      width: 57.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(9.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .fillIndigo,
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup12)),
                                                  Spacer(flex: 59),
                                                  Container(
                                                      height: 57.adaptSize,
                                                      width: 57.adaptSize,
                                                      padding: EdgeInsets
                                                          .symmetric(
                                                              horizontal: 9.h,
                                                              vertical: 6.v),
                                                      decoration: AppDecoration
                                                          .fillPrimary
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder28),
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .img55703O8i8ae48242x38,
                                                          width: 38.h,
                                                          alignment: Alignment
                                                              .topCenter)),
                                                  SizedBox(height: 43.v),
                                                  Container(
                                                      height: 5.v,
                                                      margin: EdgeInsets.only(
                                                          right: 5.h),
                                                      child: AnimatedSmoothIndicator(
                                                          activeIndex: 0,
                                                          count: 4,
                                                          effect: ScrollingDotsEffect(
                                                              spacing: 2.09,
                                                              activeDotColor:
                                                                  theme
                                                                      .colorScheme
                                                                      .primary,
                                                              dotColor: appTheme
                                                                  .blue10001,
                                                              dotHeight: 5.v,
                                                              dotWidth: 5.h))),
                                                  Spacer(flex: 40)
                                                ]))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 35.h, top: 259.v),
                                        child: CustomIconButton(
                                            height: 57.adaptSize,
                                            width: 57.adaptSize,
                                            padding: EdgeInsets.all(7.h),
                                            alignment: Alignment.topLeft,
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgClose))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            width: 137.h,
                                            margin: EdgeInsets.only(
                                                right: 119.h, bottom: 174.v),
                                            child: Text(
                                                "msg_happy_mom_happy".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: theme
                                                    .textTheme.titleLarge!
                                                    .copyWith(height: 1.27)))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            width: 280.h,
                                            margin: EdgeInsets.only(
                                                right: 49.h, bottom: 86.v),
                                            child: Text(
                                                "msg_reduce_you_baby".tr,
                                                maxLines: 4,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: theme
                                                    .textTheme.bodyMedium!
                                                    .copyWith(height: 1.36)))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            height: 187.v,
                                            width: 204.h,
                                            margin: EdgeInsets.only(
                                                top: 195.v, right: 88.h),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup4Indigo50,
                                                      height: 184.v,
                                                      alignment:
                                                          Alignment.center),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgAbstract5871,
                                                      height: 187.v,
                                                      radius:
                                                          BorderRadius.circular(
                                                              100.h),
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      margin: EdgeInsets.only(
                                                          left: 2.h)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgAbstract587139x192,
                                                      height: 39.v,
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      margin: EdgeInsets.only(
                                                          bottom: 21.v))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            height: 57.adaptSize,
                                            width: 57.adaptSize,
                                            margin: EdgeInsets.only(
                                                top: 259.v, right: 10.h),
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
                                                alignment: Alignment.topLeft))),
                                    CustomElevatedButton(
                                      onPressed: () => Navi,
                                        width: 380.h,
                                        text: "lbl_get_started".tr,
                                        margin: EdgeInsets.only(bottom: 4.v),
                                        buttonStyle:
                                            CustomButtonStyles.fillPrimary,
                                        alignment: Alignment.bottomRight)
                                  ])),
                          SizedBox(height: 45.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtPrevious(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Text("lbl_previous".tr,
                                      style: theme.textTheme.titleMedium))),
                          SizedBox(height: 5.v)
                        ])),
              )));
    });
  }

  /// Navigates to the onboardingScreenThirdScreen when the action is triggered.
  onTapTxtPrevious(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingScreenThirdScreen,
    );
  }
}
