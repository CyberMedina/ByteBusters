// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'userprofilecard_item_model.dart';

/// This class defines the variables used in the [inicio_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioModel extends Equatable {
  InicioModel({this.userprofilecardItemList = const []}) {}

  List<UserprofilecardItemModel> userprofilecardItemList;

  InicioModel copyWith(
      {List<UserprofilecardItemModel>? userprofilecardItemList}) {
    return InicioModel(
      userprofilecardItemList:
          userprofilecardItemList ?? this.userprofilecardItemList,
    );
  }

  @override
  List<Object?> get props => [userprofilecardItemList];
}
