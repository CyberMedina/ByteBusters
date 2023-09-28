import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:smartraincontrol/presentation/modalseguiragregando_screen/models/modalseguiragregando_model.dart';
part 'modalseguiragregando_event.dart';
part 'modalseguiragregando_state.dart';

/// A bloc that manages the state of a Modalseguiragregando according to the event that is dispatched to it.
class ModalseguiragregandoBloc
    extends Bloc<ModalseguiragregandoEvent, ModalseguiragregandoState> {
  ModalseguiragregandoBloc(ModalseguiragregandoState initialState)
      : super(initialState) {
    on<ModalseguiragregandoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ModalseguiragregandoInitialEvent event,
    Emitter<ModalseguiragregandoState> emit,
  ) async {
    emit(state.copyWith(pipedirectionController: TextEditingController()));
  }
}
