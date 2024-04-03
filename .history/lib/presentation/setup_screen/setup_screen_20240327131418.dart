import 'models/setup_model.dart';
import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/app_export.dart';
import 'bloc/setup_bloc.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SetupBloc>(
      create: (context) => SetupBloc(SetupState(
        setupModelObj: SetupModel(),
      ))
        ..add(SetupInitialEvent()),
      child: SetupScreen(),
    );
  }

  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), (){
      NavigatorService.
    })
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetupBloc, SetupState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBabybottle41,
                      height: 200.v,
                    ),
                    SizedBox(height: 240.v),
                    SizedBox(
                      width: 216.h,
                      child: Text(
                        "msg_please_wait_while".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargeWhiteA70001.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    SizedBox(height: 330.v),
                    _buildMobile(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMobile(BuildContext context) {
    return SizedBox(
      height: 110.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMobile,
            height: 17.v,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 11.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.img53034421,
            height: 110.v,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
