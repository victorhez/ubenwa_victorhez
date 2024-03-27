// ignore_for_file: must_be_immutable

part of 'setup_bloc.dart';

/// Represents the state of Setup in the application.
class SetupState extends Equatable {
  SetupState({this.setupModelObj});

  SetupModel? setupModelObj;

  @override
  List<Object?> get props => [
        setupModelObj,
      ];

  SetupState copyWith({SetupModel? setupModelObj}) {
    return SetupState(
      setupModelObj: setupModelObj ?? this.setupModelObj,
    );
  }
}
