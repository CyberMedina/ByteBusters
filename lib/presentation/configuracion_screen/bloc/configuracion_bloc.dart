import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sectionlistconf_item_model.dart';
import 'package:smartraincontrol/presentation/configuracion_screen/models/configuracion_model.dart';
part 'configuracion_event.dart';
part 'configuracion_state.dart';

/// A bloc that manages the state of a Configuracion according to the event that is dispatched to it.
class ConfiguracionBloc extends Bloc<ConfiguracionEvent, ConfiguracionState> {
  ConfiguracionBloc(ConfiguracionState initialState) : super(initialState) {
    on<ConfiguracionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ConfiguracionInitialEvent event,
    Emitter<ConfiguracionState> emit,
  ) async {
    emit(state.copyWith(
        configuracionModelObj: state.configuracionModelObj?.copyWith(
      sectionlistconfItemList: fillSectionlistconfItemList(),
    )));
  }

  List<SectionlistconfItemModel> fillSectionlistconfItemList() {
    return [
      SectionlistconfItemModel(groupBy: "GroupBy"),
      SectionlistconfItemModel(groupBy: "GroupBy"),
      SectionlistconfItemModel(groupBy: "GroupBy"),
      SectionlistconfItemModel(groupBy: "Ayuda")
    ];
  }
}
