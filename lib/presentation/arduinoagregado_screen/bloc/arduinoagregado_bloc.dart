import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:smartraincontrol/presentation/arduinoagregado_screen/models/arduinoagregado_model.dart';
part 'arduinoagregado_event.dart';
part 'arduinoagregado_state.dart';

/// A bloc that manages the state of a Arduinoagregado according to the event that is dispatched to it.
class ArduinoagregadoBloc
    extends Bloc<ArduinoagregadoEvent, ArduinoagregadoState> {
  ArduinoagregadoBloc(ArduinoagregadoState initialState) : super(initialState) {
    on<ArduinoagregadoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ArduinoagregadoInitialEvent event,
    Emitter<ArduinoagregadoState> emit,
  ) async {}
}
