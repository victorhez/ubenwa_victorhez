import '../../../core/app_export.dart';

/// This class is used in the [eightyeight_item_widget] screen.
class EightyeightItemModel {
  EightyeightItemModel({
    this.settings,
    this.numberOfCryEpisode,
    this.fortyFive,
    this.betterThan,
    this.id,
  }) {
    settings = settings ?? ImageConstant.imgSettings;
    numberOfCryEpisode = numberOfCryEpisode ?? "Number \nof Cry Episode";
    fortyFive = fortyFive ?? "45";
    betterThan = betterThan ?? "20% better than yesterday";
    id = id ?? "";
  }

  String? settings;

  String? numberOfCryEpisode;

  String? fortyFive;

  String? betterThan;

  String? id;
}
