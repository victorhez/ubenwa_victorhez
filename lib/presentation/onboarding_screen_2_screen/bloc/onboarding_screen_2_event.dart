// ignore_for_file: must_be_immutable

part of 'onboarding_screen_2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingScreen2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingScreen2Event extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OnboardingScreen2 widget is first created.
class OnboardingScreen2InitialEvent extends OnboardingScreen2Event {
  @override
  List<Object?> get props => [];
}
