// ignore_for_file: must_be_immutable

part of 'calander_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Calander widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CalanderEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Calander widget is first created.
class CalanderInitialEvent extends CalanderEvent {
  @override
  List<Object?> get props => [];
}
