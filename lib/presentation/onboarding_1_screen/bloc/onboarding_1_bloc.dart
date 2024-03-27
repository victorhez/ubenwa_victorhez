import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ubenwa_victorhez/presentation/onboarding_1_screen/models/onboarding_1_model.dart';
part 'onboarding_1_event.dart';
part 'onboarding_1_state.dart';

/// A bloc that manages the state of a Onboarding1 according to the event that is dispatched to it.
class Onboarding1Bloc extends Bloc<Onboarding1Event, Onboarding1State> {
  Onboarding1Bloc(Onboarding1State initialState) : super(initialState) {
    on<Onboarding1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Onboarding1InitialEvent event,
    Emitter<Onboarding1State> emit,
  ) async {}
}
