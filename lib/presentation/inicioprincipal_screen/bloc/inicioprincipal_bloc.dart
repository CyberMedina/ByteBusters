import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:smartraincontrol/presentation/inicioprincipal_screen/models/inicioprincipal_model.dart';
part 'inicioprincipal_event.dart';
part 'inicioprincipal_state.dart';

/// A bloc that manages the state of a Inicioprincipal according to the event that is dispatched to it.
class InicioprincipalBloc
    extends Bloc<InicioprincipalEvent, InicioprincipalState> {
  InicioprincipalBloc(InicioprincipalState initialState) : super(initialState) {
    on<InicioprincipalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioprincipalInitialEvent event,
    Emitter<InicioprincipalState> emit,
  ) async {
    emit(state.copyWith(
        replyController: TextEditingController(),
        replyoneController: TextEditingController()));
  }
}
