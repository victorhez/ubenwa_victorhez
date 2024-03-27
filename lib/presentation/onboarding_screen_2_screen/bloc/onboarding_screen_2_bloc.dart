import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ubenwa_victorhez/presentation/onboarding_screen_2_screen/models/onboarding_screen_2_model.dart';
part 'onboarding_screen_2_event.dart';
part 'onboarding_screen_2_state.dart';

/// A bloc that manages the state of a OnboardingScreen2 according to the event that is dispatched to it.
class OnboardingScreen2Bloc
    extends Bloc<OnboardingScreen2Event, OnboardingScreen2State> {
  OnboardingScreen2Bloc(OnboardingScreen2State initialState)
      : super(initialState) {
    on<OnboardingScreen2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingScreen2InitialEvent event,
    Emitter<OnboardingScreen2State> emit,
  ) async {}
}
