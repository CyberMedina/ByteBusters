import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:smartraincontrol/presentation/anadirdispositivo_screen/models/anadirdispositivo_model.dart';
part 'anadirdispositivo_event.dart';
part 'anadirdispositivo_state.dart';

/// A bloc that manages the state of a Anadirdispositivo according to the event that is dispatched to it.
class AnadirdispositivoBloc
    extends Bloc<AnadirdispositivoEvent, AnadirdispositivoState> {
  AnadirdispositivoBloc(AnadirdispositivoState initialState)
      : super(initialState) {
    on<AnadirdispositivoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AnadirdispositivoInitialEvent event,
    Emitter<AnadirdispositivoState> emit,
  ) async {
    emit(state.copyWith(tilecontentoneController: TextEditingController()));
  }
}
