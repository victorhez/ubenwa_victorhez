// ignore_for_file: must_be_immutable

part of 'onboarding_1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onboarding1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Onboarding1Event extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onboarding1 widget is first created.
class Onboarding1InitialEvent extends Onboarding1Event {
  @override
  List<Object?> get props => [];
}
