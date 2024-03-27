import '../../../core/app_export.dart';

/// This class is used in the [ninetynine_item_widget] screen.
class NinetynineItemModel {
  NinetynineItemModel({
    this.thumbsUp,
    this.dailyChallenge,
    this.eight,
    this.outOfTwelve,
    this.hoursOfSilence,
    this.id,
  }) {
    thumbsUp = thumbsUp ?? ImageConstant.imgThumbsUp;
    dailyChallenge = dailyChallenge ?? "Daily Challenge";
    eight = eight ?? "8";
    outOfTwelve = outOfTwelve ?? "out of 12";
    hoursOfSilence = hoursOfSilence ?? "hours of silence";
    id = id ?? "";
  }

  String? thumbsUp;

  String? dailyChallenge;

  String? eight;

  String? outOfTwelve;

  String? hoursOfSilence;

  String? id;
}
