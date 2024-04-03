import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:ubenwa_victorhez/widgets/app_bar/custom_app_bar.dart';
import 'package:ubenwa_victorhez/widgets/app_bar/appbar_leading_image.dart';
import 'package:ubenwa_victorhez/widgets/app_bar/appbar_title.dart';
import 'widgets/eightyeight_item_widget.dart';
import 'models/eightyeight_item_model.dart';
import 'models/dashboard_model.dart';
import 'widgets/ninetynine_item_widget.dart';
import 'models/ninetynine_item_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/app_export.dart';
import 'bloc/dashboard_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) =>
            DashboardBloc(DashboardState(dashboardModelObj: DashboardModel()))
              ..add(DashboardInitialEvent()),
        child: DashboardScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        _buildAppBar(context),
        _buildCalendar(context),
        // SizedBox(height: 173.v),
        Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text("msg_today_s_overview".tr,
                style: theme.textTheme.labelLarge)),
        SizedBox(height: 12.v),
        _buildEightyEight(context),
        SizedBox(height: 27.v),
        Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text("msg_hourly_breakdown".tr,
                style: theme.textTheme.labelLarge)),
        SizedBox(height: 249.v),
        _buildNinetyNine(context),
        SizedBox(height: 14.v)
      ]),
      // _buildView1(context),
      // _buildCalendar(context)
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 19.h, bottom: 2.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_cry_records".tr),
        actions: [
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 2.v),
              child: Stack(alignment: Alignment.topRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgVuesaxLinearNotification,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        height: 7.adaptSize,
                        width: 7.adaptSize,
                        margin: EdgeInsets.fromLTRB(13.h, 2.v, 4.h, 15.v),
                        decoration: BoxDecoration(
                            color: appTheme.amber600,
                            borderRadius: BorderRadius.circular(3.h))))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildEightyEight(BuildContext context) {
    return Expanded(
        child: Align(
            alignment: Alignment.center,
            child: SizedBox(
                height: 120.v,
                child: BlocSelector<DashboardBloc, DashboardState,
                        DashboardModel?>(
                    selector: (state) => state.dashboardModelObj,
                    builder: (context, dashboardModelObj) {
                      return ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 16.h);
                          },
                          itemCount:
                              dashboardModelObj?.eightyeightItemList.length ??
                                  0,
                          itemBuilder: (context, index) {
                            EightyeightItemModel model =
                                dashboardModelObj?.eightyeightItemList[index] ??
                                    EightyeightItemModel();
                            return EightyeightItemWidget(model);
                          });
                    }))));
  }

  /// Section Widget
  Widget _buildNinetyNine(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 194.v,
            child: BlocSelector<DashboardBloc, DashboardState, DashboardModel?>(
                selector: (state) => state.dashboardModelObj,
                builder: (context, dashboardModelObj) {
                  return ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 15.h);
                      },
                      itemCount:
                          dashboardModelObj?.ninetynineItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        NinetynineItemModel model =
                            dashboardModelObj?.ninetynineItemList[index] ??
                                NinetynineItemModel();
                        return NinetynineItemWidget(model);
                      });
                })));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(top: 12.v),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(left: 9.h, right: 13.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: AppDecoration.fillPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 143.v),
                                  Container(
                                      height: 8.v,
                                      width: 7.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.gray300,
                                          borderRadius:
                                              BorderRadius.circular(3.h)))
                                ])),
                        _buildSixtyTwo(context),
                        Container(
                            decoration: AppDecoration.fillPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 37.v),
                                  Container(
                                      height: 114.v,
                                      width: 7.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.gray300,
                                          borderRadius:
                                              BorderRadius.circular(3.h)))
                                ])),
                        Container(
                            decoration: AppDecoration.fillPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 121.v),
                                  Container(
                                      height: 30.v,
                                      width: 7.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.gray300,
                                          borderRadius:
                                              BorderRadius.circular(3.h)))
                                ])),
                        Container(
                            decoration: AppDecoration.fillPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 37.v),
                                  Container(
                                      height: 114.v,
                                      width: 7.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.gray300,
                                          borderRadius:
                                              BorderRadius.circular(3.h)))
                                ])),
                        Container(
                            decoration: AppDecoration.fillPrimaryContainer1
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 11.v),
                                  Container(
                                      height: 140.v,
                                      width: 7.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.gray300,
                                          borderRadius:
                                              BorderRadius.circular(3.h)))
                                ])),
                        Container(
                            decoration: AppDecoration.fillPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 102.v),
                                  Container(
                                      height: 49.v,
                                      width: 7.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.gray300,
                                          borderRadius:
                                              BorderRadius.circular(3.h)))
                                ])),
                        Container(
                            decoration: AppDecoration.fillPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 129.v),
                                  Container(
                                      height: 22.v,
                                      width: 7.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.gray300,
                                          borderRadius:
                                              BorderRadius.circular(3.h)))
                                ])),
                        Container(
                            decoration: AppDecoration.fillPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 66.v),
                                  Container(
                                      height: 85.v,
                                      width: 7.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.gray300,
                                          borderRadius:
                                              BorderRadius.circular(3.h)))
                                ])),
                        Container(
                            decoration: AppDecoration.fillPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 106.v),
                                  Container(
                                      height: 45.v,
                                      width: 7.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.gray300,
                                          borderRadius:
                                              BorderRadius.circular(3.h)))
                                ])),
                        _buildSixtyTwo(context)
                      ])),
              SizedBox(height: 6.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                    width: 23.h,
                    child: Text("lbl_00_00_02_00".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall)),
                Container(
                    width: 25.h,
                    margin: EdgeInsets.only(left: 7.h),
                    child: Text("lbl_02_00_04_00".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall)),
                Container(
                    width: 25.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: Text("lbl_04_00_06_00".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall)),
                Container(
                    width: 25.h,
                    margin: EdgeInsets.only(left: 6.h),
                    child: Text("lbl_06_00_08_00".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall)),
                Container(
                    width: 25.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: Text("lbl_08_00_10_00".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall)),
                Container(
                    width: 23.h,
                    margin: EdgeInsets.only(left: 4.h),
                    child: Text("lbl_10_00_12_00".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall)),
                Container(
                    width: 23.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: Text("lbl_12_00_14_00".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall)),
                Container(
                    width: 23.h,
                    margin: EdgeInsets.only(left: 6.h),
                    child: Text("lbl_14_00_16_00".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall)),
                Container(
                    width: 23.h,
                    margin: EdgeInsets.only(left: 8.h),
                    child: Text("lbl_16_00_18_00".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall)),
                Container(
                    width: 24.h,
                    margin: EdgeInsets.only(left: 9.h),
                    child: Text("lbl_18_00_20_00".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall)),
                Container(
                    width: 25.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: Text("lbl_20_00_22_00".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall))
              ])
            ])));
  }

  /// Section Widget
  Widget _buildView1(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 421.v, bottom: 252.v),
            padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 9.v),
            decoration: AppDecoration.gradientPrimaryToIndigo
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildView(context),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, top: 12.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 5.h, right: 12.h),
                                decoration: AppDecoration.fillPrimaryContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 26.v),
                                      Container(
                                          height: 125.v,
                                          width: 7.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.gray300,
                                              borderRadius:
                                                  BorderRadius.circular(3.h)))
                                    ])),
                            SizedBox(height: 6.v),
                            SizedBox(
                                width: 25.h,
                                child: Text("lbl_22_00_24_00".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodySmall))
                          ]))
                ])));
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
          return Container(
              height: 121.v,
              width: 583.h,
              margin: EdgeInsets.only(top: 67.v),
              child: EasyDateTimeLine(
                  initialDate:
                      state.selectedDatesFromCalendar1 ?? DateTime.now(),
                  locale: 'en_US',
                  headerProps: EasyHeaderProps(
                      selectedDateFormat: SelectedDateFormat.fullDateDMY,
                      monthPickerType: MonthPickerType.switcher,
                      showHeader: false),
                  dayProps: EasyDayProps(width: 38.h, height: 85.v),
                  onDateChange: (selectedDate) {
                    state.selectedDatesFromCalendar1 = selectedDate;
                  },
                  itemBuilder: (context, dayNumber, dayName, monthName,
                      fullDate, isSelected) {
                    return isSelected
                        ? Stack(
                            children: [
                              Pa(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFB300),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                              Container(
                                  width: 38.h,

                                  // padding: EdgeInsets.symmetric(
                                  //     horizontal: 8.h, vertical: 22.v),
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius:
                                          BorderRadius.circular(19.h)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 1.h),
                                            child: Text(dayName.toString(),
                                                style: CustomTextStyles
                                                    .bodySmall10
                                                    .copyWith(
                                                        color: appTheme
                                                            .whiteA70001))),
                                        Padding(
                                            padding: EdgeInsets.only(top: 6.v),
                                            child: Text(dayNumber.toString(),
                                                style: CustomTextStyles
                                                    .titleMediumWhiteA70001
                                                    .copyWith(
                                                        color: appTheme
                                                            .whiteA70001)))
                                      ])),
                            ],
                          )
                        : Container(
                            width: 38.h,
                            // padding: EdgeInsets.symmetric(
                            //     horizontal: 7.h, vertical: 22.v),
                            decoration: BoxDecoration(
                                color: appTheme.gray20001,
                                borderRadius: BorderRadius.circular(19.h)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(dayName.toString(),
                                      style: CustomTextStyles
                                          .bodySmallBlack90010
                                          .copyWith(
                                              color: appTheme.black900
                                                  .withOpacity(0.41))),
                                  Padding(
                                      padding: EdgeInsets.only(top: 6.v),
                                      child: Text(dayNumber.toString(),
                                          style: theme.textTheme.bodyLarge!
                                              .copyWith(
                                                  color: appTheme.black900
                                                      .withOpacity(0.41))))
                                ]));
                  }));
        }));
  }

  /// Section Widget
  Widget _buildNov(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 428.h),
            child: IntrinsicWidth(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(
                      padding: EdgeInsets.only(left: 9.h, right: 77.h),
                      child: Row(children: [
                        Text("lbl_nov".tr,
                            style: CustomTextStyles.bodyLargeGray500),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text("lbl_aug".tr,
                                style: CustomTextStyles.bodyLargeGray500))
                      ])),
                  SizedBox(height: 12.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: EdgeInsets.only(top: 3.v, right: 9.h),
                        child: _buildTwentyEight(context,
                            sun: "lbl_sat".tr, twentyThree: "lbl_22".tr)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 9.h, top: 3.v, right: 9.h),
                        child: _buildTwentyEight(context,
                            sun: "lbl_sun".tr, twentyThree: "lbl_23".tr)),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h, bottom: 3.v),
                        child: _buildTwentyEight(context,
                            sun: "lbl_mon".tr, twentyThree: "lbl_24".tr))
                  ])
                ]))));
  }

  /// Common widget
  Widget _buildSixtyTwo(BuildContext context) {
    return SizedBox(
        height: 151.v,
        width: 6.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 151.v,
                  child: VerticalDivider(width: 6.h, thickness: 6.v))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 85.v,
                  child: VerticalDivider(
                      width: 6.h, thickness: 6.v, color: appTheme.gray300)))
        ]));
  }

  /// Common widget
  Widget _buildTwentyEight(
    BuildContext context, {
    required String sun,
    required String twentyThree,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 22.v),
                decoration: AppDecoration.fillGray20001
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder19),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text(sun,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallBlack90010
                                  .copyWith(
                                      color: appTheme.black900
                                          .withOpacity(0.41)))),
                      SizedBox(height: 6.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(twentyThree,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                  color: appTheme.black900.withOpacity(0.41))))
                    ]))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
