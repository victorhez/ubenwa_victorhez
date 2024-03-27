// ignore_for_file: must_be_immutable

part of 'onboarding_screen_2_bloc.dart';

/// Represents the state of OnboardingScreen2 in the application.
class OnboardingScreen2State extends Equatable {
  OnboardingScreen2State({this.onboardingScreen2ModelObj});

  OnboardingScreen2Model? onboardingScreen2ModelObj;

  @override
  List<Object?> get props => [
        onboardingScreen2ModelObj,
      ];

  OnboardingScreen2State copyWith(
      {OnboardingScreen2Model? onboardingScreen2ModelObj}) {
    return OnboardingScreen2State(
      onboardingScreen2ModelObj:
          onboardingScreen2ModelObj ?? this.onboardingScreen2ModelObj,
    );
  }
}
