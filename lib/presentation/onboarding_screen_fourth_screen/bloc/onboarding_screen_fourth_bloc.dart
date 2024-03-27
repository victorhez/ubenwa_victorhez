import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ubenwa_victorhez/presentation/onboarding_screen_fourth_screen/models/onboarding_screen_fourth_model.dart';
part 'onboarding_screen_fourth_event.dart';
part 'onboarding_screen_fourth_state.dart';

/// A bloc that manages the state of a OnboardingScreenFourth according to the event that is dispatched to it.
class OnboardingScreenFourthBloc
    extends Bloc<OnboardingScreenFourthEvent, OnboardingScreenFourthState> {
  OnboardingScreenFourthBloc(OnboardingScreenFourthState initialState)
      : super(initialState) {
    on<OnboardingScreenFourthInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingScreenFourthInitialEvent event,
    Emitter<OnboardingScreenFourthState> emit,
  ) async {}
}
