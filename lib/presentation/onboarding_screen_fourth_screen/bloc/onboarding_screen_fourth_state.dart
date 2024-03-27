// ignore_for_file: must_be_immutable

part of 'onboarding_screen_fourth_bloc.dart';

/// Represents the state of OnboardingScreenFourth in the application.
class OnboardingScreenFourthState extends Equatable {
  OnboardingScreenFourthState({this.onboardingScreenFourthModelObj});

  OnboardingScreenFourthModel? onboardingScreenFourthModelObj;

  @override
  List<Object?> get props => [
        onboardingScreenFourthModelObj,
      ];

  OnboardingScreenFourthState copyWith(
      {OnboardingScreenFourthModel? onboardingScreenFourthModelObj}) {
    return OnboardingScreenFourthState(
      onboardingScreenFourthModelObj:
          onboardingScreenFourthModelObj ?? this.onboardingScreenFourthModelObj,
    );
  }
}
