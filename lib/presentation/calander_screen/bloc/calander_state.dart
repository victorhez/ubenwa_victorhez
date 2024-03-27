// ignore_for_file: must_be_immutable

part of 'calander_bloc.dart';

/// Represents the state of Calander in the application.
class CalanderState extends Equatable {
  CalanderState({this.calanderModelObj});

  CalanderModel? calanderModelObj;

  @override
  List<Object?> get props => [
        calanderModelObj,
      ];

  CalanderState copyWith({CalanderModel? calanderModelObj}) {
    return CalanderState(
      calanderModelObj: calanderModelObj ?? this.calanderModelObj,
    );
  }
}
