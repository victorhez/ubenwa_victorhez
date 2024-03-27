// ignore_for_file: must_be_immutable

part of 'onboarding_screen_third_bloc.dart';

/// Represents the state of OnboardingScreenThird in the application.
class OnboardingScreenThirdState extends Equatable {
  OnboardingScreenThirdState({this.onboardingScreenThirdModelObj});

  OnboardingScreenThirdModel? onboardingScreenThirdModelObj;

  @override
  List<Object?> get props => [
        onboardingScreenThirdModelObj,
      ];

  OnboardingScreenThirdState copyWith(
      {OnboardingScreenThirdModel? onboardingScreenThirdModelObj}) {
    return OnboardingScreenThirdState(
      onboardingScreenThirdModelObj:
          onboardingScreenThirdModelObj ?? this.onboardingScreenThirdModelObj,
    );
  }
}
