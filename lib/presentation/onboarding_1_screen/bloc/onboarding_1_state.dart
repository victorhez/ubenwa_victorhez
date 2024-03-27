// ignore_for_file: must_be_immutable

part of 'onboarding_1_bloc.dart';

/// Represents the state of Onboarding1 in the application.
class Onboarding1State extends Equatable {
  Onboarding1State({this.onboarding1ModelObj});

  Onboarding1Model? onboarding1ModelObj;

  @override
  List<Object?> get props => [
        onboarding1ModelObj,
      ];

  Onboarding1State copyWith({Onboarding1Model? onboarding1ModelObj}) {
    return Onboarding1State(
      onboarding1ModelObj: onboarding1ModelObj ?? this.onboarding1ModelObj,
    );
  }
}
