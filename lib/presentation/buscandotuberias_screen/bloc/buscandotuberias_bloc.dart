import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/tilecontent_item_model.dart';
import 'package:smartraincontrol/presentation/buscandotuberias_screen/models/buscandotuberias_model.dart';
part 'buscandotuberias_event.dart';
part 'buscandotuberias_state.dart';

/// A bloc that manages the state of a Buscandotuberias according to the event that is dispatched to it.
class BuscandotuberiasBloc
    extends Bloc<BuscandotuberiasEvent, BuscandotuberiasState> {
  BuscandotuberiasBloc(BuscandotuberiasState initialState)
      : super(initialState) {
    on<BuscandotuberiasInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BuscandotuberiasInitialEvent event,
    Emitter<BuscandotuberiasState> emit,
  ) async {
    emit(state.copyWith(
        buscandotuberiasModelObj: state.buscandotuberiasModelObj
            ?.copyWith(tilecontentItemList: fillTilecontentItemList())));
  }

  List<TilecontentItemModel> fillTilecontentItemList() {
    return List.generate(3, (index) => TilecontentItemModel());
  }
}
