import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/eightyeight_item_model.dart';
import '../models/ninetynine_item_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:ubenwa_victorhez/presentation/dashboard_screen/models/dashboard_model.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// A bloc that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(DashboardState initialState) : super(initialState) {
    on<DashboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DashboardInitialEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(
        dashboardModelObj: state.dashboardModelObj?.copyWith(
            eightyeightItemList: fillEightyeightItemList(),
            ninetynineItemList: fillNinetynineItemList())));
  }

  List<EightyeightItemModel> fillEightyeightItemList() {
    return [
      EightyeightItemModel(
          settings: ImageConstant.imgSettings,
          numberOfCryEpisode: "Number \nof Cry Episode",
          fortyFive: "45",
          betterThan: "20% better than yesterday"),
      EightyeightItemModel(
          settings: ImageConstant.imgSettingsLime900,
          numberOfCryEpisode: "Longest \nCry Duration",
          fortyFive: "30mins",
          betterThan: "20% worst than yesterday"),
      EightyeightItemModel(
          settings: ImageConstant.imgSettingsPurple500,
          numberOfCryEpisode: "Cumulative \nCry Duration",
          fortyFive: "4hours",
          betterThan: "20% better than yesterday")
    ];
  }

  List<NinetynineItemModel> fillNinetynineItemList() {
    return [
      NinetynineItemModel(
          thumbsUp: ImageConstant.imgThumbsUp,
          dailyChallenge: "Daily Challenge",
          eight: "8",
          outOfTwelve: "out of 12",
          hoursOfSilence: "hours of silence")
    ];
  }
}
