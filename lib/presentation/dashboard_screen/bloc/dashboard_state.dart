// ignore_for_file: must_be_immutable

part of 'dashboard_bloc.dart';

/// Represents the state of Dashboard in the application.
class DashboardState extends Equatable {
  DashboardState({
    this.selectedDatesFromCalendar1,
    this.dashboardModelObj,
  });

  DashboardModel? dashboardModelObj;

  DateTime? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        dashboardModelObj,
      ];

  DashboardState copyWith({
    DateTime? selectedDatesFromCalendar1,
    DashboardModel? dashboardModelObj,
  }) {
    return DashboardState(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      dashboardModelObj: dashboardModelObj ?? this.dashboardModelObj,
    );
  }
}
