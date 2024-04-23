import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding_state.freezed.dart';

@freezed
sealed class OnBoardingState with _$OnBoardingState {
  factory OnBoardingState.initial() = Initial;
  factory OnBoardingState.passed() = Passed;
  factory OnBoardingState.passing() = Passing;
  factory OnBoardingState.notPassed() = NotPassed;
}