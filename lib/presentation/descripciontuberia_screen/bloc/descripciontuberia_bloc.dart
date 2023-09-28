import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:smartraincontrol/presentation/descripciontuberia_screen/models/descripciontuberia_model.dart';
part 'descripciontuberia_event.dart';
part 'descripciontuberia_state.dart';

/// A bloc that manages the state of a Descripciontuberia according to the event that is dispatched to it.
class DescripciontuberiaBloc
    extends Bloc<DescripciontuberiaEvent, DescripciontuberiaState> {
  DescripciontuberiaBloc(DescripciontuberiaState initialState)
      : super(initialState) {
    on<DescripciontuberiaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DescripciontuberiaInitialEvent event,
    Emitter<DescripciontuberiaState> emit,
  ) async {
    emit(state.copyWith(
        edittextController: TextEditingController(),
        edittextoneController: TextEditingController()));
  }
}
