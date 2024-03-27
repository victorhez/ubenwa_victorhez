import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ubenwa_victorhez/presentation/onboarding_screen_third_screen/models/onboarding_screen_third_model.dart';
part 'onboarding_screen_third_event.dart';
part 'onboarding_screen_third_state.dart';

/// A bloc that manages the state of a OnboardingScreenThird according to the event that is dispatched to it.
class OnboardingScreenThirdBloc
    extends Bloc<OnboardingScreenThirdEvent, OnboardingScreenThirdState> {
  OnboardingScreenThirdBloc(OnboardingScreenThirdState initialState)
      : super(initialState) {
    on<OnboardingScreenThirdInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingScreenThirdInitialEvent event,
    Emitter<OnboardingScreenThirdState> emit,
  ) async {}
}
