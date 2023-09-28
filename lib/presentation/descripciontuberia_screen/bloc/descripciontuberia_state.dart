// ignore_for_file: must_be_immutable

part of 'descripciontuberia_bloc.dart';

/// Represents the state of Descripciontuberia in the application.
class DescripciontuberiaState extends Equatable {
  DescripciontuberiaState({
    this.edittextController,
    this.edittextoneController,
    this.descripciontuberiaModelObj,
  });

  TextEditingController? edittextController;

  TextEditingController? edittextoneController;

  DescripciontuberiaModel? descripciontuberiaModelObj;

  @override
  List<Object?> get props => [
        edittextController,
        edittextoneController,
        descripciontuberiaModelObj,
      ];
  DescripciontuberiaState copyWith({
    TextEditingController? edittextController,
    TextEditingController? edittextoneController,
    DescripciontuberiaModel? descripciontuberiaModelObj,
  }) {
    return DescripciontuberiaState(
      edittextController: edittextController ?? this.edittextController,
      edittextoneController:
          edittextoneController ?? this.edittextoneController,
      descripciontuberiaModelObj:
          descripciontuberiaModelObj ?? this.descripciontuberiaModelObj,
    );
  }
}
