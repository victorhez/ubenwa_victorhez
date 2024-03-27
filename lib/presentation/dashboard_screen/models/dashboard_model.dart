// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'eightyeight_item_model.dart';
import 'ninetynine_item_model.dart';

/// This class defines the variables used in the [dashboard_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel extends Equatable {
  DashboardModel({
    this.eightyeightItemList = const [],
    this.ninetynineItemList = const [],
  }) {}

  List<EightyeightItemModel> eightyeightItemList;

  List<NinetynineItemModel> ninetynineItemList;

  DashboardModel copyWith({
    List<EightyeightItemModel>? eightyeightItemList,
    List<NinetynineItemModel>? ninetynineItemList,
  }) {
    return DashboardModel(
      eightyeightItemList: eightyeightItemList ?? this.eightyeightItemList,
      ninetynineItemList: ninetynineItemList ?? this.ninetynineItemList,
    );
  }

  @override
  List<Object?> get props => [eightyeightItemList, ninetynineItemList];
}
