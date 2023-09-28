// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'tilecontent_item_model.dart';

/// This class defines the variables used in the [buscandotuberias_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BuscandotuberiasModel extends Equatable {
  BuscandotuberiasModel({this.tilecontentItemList = const []}) {}

  List<TilecontentItemModel> tilecontentItemList;

  BuscandotuberiasModel copyWith(
      {List<TilecontentItemModel>? tilecontentItemList}) {
    return BuscandotuberiasModel(
      tilecontentItemList: tilecontentItemList ?? this.tilecontentItemList,
    );
  }

  @override
  List<Object?> get props => [tilecontentItemList];
}
