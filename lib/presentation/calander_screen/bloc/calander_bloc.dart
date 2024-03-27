import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ubenwa_victorhez/presentation/calander_screen/models/calander_model.dart';
part 'calander_event.dart';
part 'calander_state.dart';

/// A bloc that manages the state of a Calander according to the event that is dispatched to it.
class CalanderBloc extends Bloc<CalanderEvent, CalanderState> {
  CalanderBloc(CalanderState initialState) : super(initialState) {
    on<CalanderInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CalanderInitialEvent event,
    Emitter<CalanderState> emit,
  ) async {}
}
