import 'models/calander_model.dart';
import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/app_export.dart';
import 'bloc/calander_bloc.dart';

class CalanderScreen extends StatelessWidget {
  const CalanderScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CalanderBloc>(
      create: (context) => CalanderBloc(CalanderState(
        calanderModelObj: CalanderModel(),
      ))
        ..add(CalanderInitialEvent()),
      child: CalanderScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalanderBloc, CalanderState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgImg00681,
                width: 428.h,
                alignment: Alignment.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
