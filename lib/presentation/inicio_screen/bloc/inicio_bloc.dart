import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilecard_item_model.dart';
import 'package:smartraincontrol/presentation/inicio_screen/models/inicio_model.dart';
part 'inicio_event.dart';
part 'inicio_state.dart';

/// A bloc that manages the state of a Inicio according to the event that is dispatched to it.
class InicioBloc extends Bloc<InicioEvent, InicioState> {
  InicioBloc(InicioState initialState) : super(initialState) {
    on<InicioInitialEvent>(_onInitialize);
  }

  List<UserprofilecardItemModel> fillUserprofilecardItemList() {
    return List.generate(4, (index) => UserprofilecardItemModel());
  }

  _onInitialize(
    InicioInitialEvent event,
    Emitter<InicioState> emit,
  ) async {
    emit(state.copyWith(
        replyController: TextEditingController(),
        replyoneController: TextEditingController()));
    emit(state.copyWith(
        inicioModelObj: state.inicioModelObj?.copyWith(
            userprofilecardItemList: fillUserprofilecardItemList())));
  }
}
