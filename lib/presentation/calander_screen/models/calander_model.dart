// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [calander_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CalanderModel extends Equatable {
  CalanderModel() {}

  CalanderModel copyWith() {
    return CalanderModel();
  }

  @override
  List<Object?> get props => [];
}
