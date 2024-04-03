import 'package:ubenwa_victorhez/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'models/onboarding_1_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/app_export.dart';
import 'bloc/onboarding_1_bloc.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Onboarding1Bloc>(
        create: (context) => Onboarding1Bloc(
            Onboarding1State(onboarding1ModelObj: Onboarding1Model()))
          ..add(Onboarding1InitialEvent()),
        child: Onboarding1Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Onboarding1Bloc, Onboarding1State>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA70001,
              body: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 0.v),
                    child: Column(children: [
                      SizedBox(
                          height: 764.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle18764x258,
                                    width: 258.h,
                                    alignment: Alignment.centerRight),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle17764x348,
                                    width: 348.h,
                                    alignment: Alignment.centerRight),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 34.h),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 28.v),
                                              CustomIconButton(
                                                  height: 57.adaptSize,
                                                  width: 57.adaptSize,
                                                  padding: EdgeInsets.all(7.h),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgClose)),
                                              SizedBox(height: 15.v),
                                              _buildOIAE(context),
                                              SizedBox(height: 10.v),
                                              Container(
                                                  height: 57.adaptSize,
                                                  width: 57.adaptSize,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 7.h,
                                                      vertical: 5.v),
                                                  decoration: AppDecoration
                                                      .fillOnPrimaryContainer
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder28),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .img55703O8i8ae48242x40,
                                                      width: 40.h,
                                                      alignment:
                                                          Alignment.topLeft)),
                                              SizedBox(height: 43.v),
                                              SizedBox(
                                                  height: 5.v,
                                                  child: AnimatedSmoothIndicator(
                                                      activeIndex: 0,
                                                      count: 4,
                                                      effect: ScrollingDotsEffect(
                                                          spacing: 2.62,
                                                          activeDotColor: theme
                                                              .colorScheme
                                                              .onPrimaryContainer,
                                                          dotColor:
                                                              appTheme.blue100,
                                                          dotHeight: 5.v,
                                                          dotWidth: 5.h))),
                                              SizedBox(height: 41.v),
                                              SizedBox(
                                                  width: 225.h,
                                                  child: Text(
                                                      "msg_welcome_to_a_new".tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: theme
                                                          .textTheme.titleLarge!
                                                          .copyWith(
                                                              height: 1.27))),
                                              SizedBox(height: 10.v),
                                              Container(
                                                  width: 302.h,
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 29.h),
                                                  child: Text(
                                                      "msg_now_you_can_understand"
                                                          .tr,
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: theme
                                                          .textTheme.bodyMedium!
                                                          .copyWith(
                                                              height: 1.36)))
                                            ])))
                              ])),
                      SizedBox(height: 26.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtShowMeHow(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(right: 24.h),
                                  child: Text("lbl_show_me_how".tr,
                                      style: CustomTextStyles
                                          .titleMediumPrimary)))),
                      SizedBox(height: 5.v)
                    ])),
              )));
    });
  }

  /// Section Widget
  Widget _buildOIAE(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 57.adaptSize,
              width: 57.adaptSize,
              margin: EdgeInsets.only(top: 61.v, bottom: 66.v),
              padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 6.v),
              decoration: AppDecoration.fillIndigo
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder28),
              child: CustomImageView(
                  imagePath: ImageConstant.img55703O8i8ae48242x38,
                  width: 38.h,
                  alignment: Alignment.topCenter)),
          Container(
              height: 184.v,
              width: 202.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: fs.Svg(ImageConstant.imgGroup4),
                      fit: BoxFit.cover)),
              child: CustomImageView(
                  imagePath: ImageConstant.img183018341,
                  height: 174.v,
                  radius: BorderRadius.circular(100.h),
                  alignment: Alignment.bottomCenter)),
          Padding(
              padding: EdgeInsets.only(top: 61.v, bottom: 66.v),
              child: CustomIconButton(
                  height: 57.adaptSize,
                  width: 57.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.fillIndigo,
                  child: CustomImageView(imagePath: ImageConstant.imgGroup12)))
        ]));
  }

  /// Navigates to the onboardingScreen2Screen when the action is triggered.
  onTapTxtShowMeHow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingScreen2Screen,
    );
  }
}
