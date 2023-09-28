import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:smartraincontrol/presentation/iniciosesion_screen/models/iniciosesion_model.dart';
part 'iniciosesion_event.dart';
part 'iniciosesion_state.dart';

/// A bloc that manages the state of a Iniciosesion according to the event that is dispatched to it.
class IniciosesionBloc extends Bloc<IniciosesionEvent, IniciosesionState> {
  IniciosesionBloc(IniciosesionState initialState) : super(initialState) {
    on<IniciosesionInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<IniciosesionState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    IniciosesionInitialEvent event,
    Emitter<IniciosesionState> emit,
  ) async {
    emit(state.copyWith(
        checkmarkController: TextEditingController(),
        inputController: TextEditingController(),
        isShowPassword: true));
  }
}
