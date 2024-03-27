// ignore_for_file: must_be_immutable

part of 'setup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Setup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Setup widget is first created.
class SetupInitialEvent extends SetupEvent {
  @override
  List<Object?> get props => [];
}
