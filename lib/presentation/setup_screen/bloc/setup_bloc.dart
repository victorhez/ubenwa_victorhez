import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ubenwa_victorhez/presentation/setup_screen/models/setup_model.dart';
part 'setup_event.dart';
part 'setup_state.dart';

/// A bloc that manages the state of a Setup according to the event that is dispatched to it.
class SetupBloc extends Bloc<SetupEvent, SetupState> {
  SetupBloc(SetupState initialState) : super(initialState) {
    on<SetupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SetupInitialEvent event,
    Emitter<SetupState> emit,
  ) async {}
}
