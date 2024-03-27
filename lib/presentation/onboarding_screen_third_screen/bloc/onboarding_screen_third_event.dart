// ignore_for_file: must_be_immutable

part of 'onboarding_screen_third_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingScreenThird widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingScreenThirdEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OnboardingScreenThird widget is first created.
class OnboardingScreenThirdInitialEvent extends OnboardingScreenThirdEvent {
  @override
  List<Object?> get props => [];
}
