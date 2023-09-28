import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:smartraincontrol/presentation/crearcuenta_screen/models/crearcuenta_model.dart';
part 'crearcuenta_event.dart';
part 'crearcuenta_state.dart';

/// A bloc that manages the state of a Crearcuenta according to the event that is dispatched to it.
class CrearcuentaBloc extends Bloc<CrearcuentaEvent, CrearcuentaState> {
  CrearcuentaBloc(CrearcuentaState initialState) : super(initialState) {
    on<CrearcuentaInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CrearcuentaState> emit,
  ) {
    emit(state.copyWith(alcontinuaracep: event.value));
  }

  _onInitialize(
    CrearcuentaInitialEvent event,
    Emitter<CrearcuentaState> emit,
  ) async {
    emit(state.copyWith(
        labelcontainerController: TextEditingController(),
        checkmarkController: TextEditingController(),
        alcontinuaracep: false));
  }
}
