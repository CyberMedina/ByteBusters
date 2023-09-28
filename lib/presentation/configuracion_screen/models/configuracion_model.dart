// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sectionlistconf_item_model.dart';

/// This class defines the variables used in the [configuracion_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ConfiguracionModel extends Equatable {
  ConfiguracionModel({this.sectionlistconfItemList = const []}) {}

  List<SectionlistconfItemModel> sectionlistconfItemList;

  ConfiguracionModel copyWith(
      {List<SectionlistconfItemModel>? sectionlistconfItemList}) {
    return ConfiguracionModel(
      sectionlistconfItemList:
          sectionlistconfItemList ?? this.sectionlistconfItemList,
    );
  }

  @override
  List<Object?> get props => [sectionlistconfItemList];
}
