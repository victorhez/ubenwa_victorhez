// ignore_for_file: must_be_immutable

part of 'onboarding_screen_fourth_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingScreenFourth widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingScreenFourthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OnboardingScreenFourth widget is first created.
class OnboardingScreenFourthInitialEvent extends OnboardingScreenFourthEvent {
  @override
  List<Object?> get props => [];
}
