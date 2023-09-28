import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:smartraincontrol/presentation/splashscreen_screen/models/splashscreen_model.dart';
part 'splashscreen_event.dart';
part 'splashscreen_state.dart';

/// A bloc that manages the state of a Splashscreen according to the event that is dispatched to it.
class SplashscreenBloc extends Bloc<SplashscreenEvent, SplashscreenState> {
  SplashscreenBloc(SplashscreenState initialState) : super(initialState) {
    on<SplashscreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashscreenInitialEvent event,
    Emitter<SplashscreenState> emit,
  ) async {}
}
