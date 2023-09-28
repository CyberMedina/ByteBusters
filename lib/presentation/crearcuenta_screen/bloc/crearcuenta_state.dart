// ignore_for_file: must_be_immutable

part of 'crearcuenta_bloc.dart';

/// Represents the state of Crearcuenta in the application.
class CrearcuentaState extends Equatable {
  CrearcuentaState({
    this.labelcontainerController,
    this.checkmarkController,
    this.alcontinuaracep = false,
    this.crearcuentaModelObj,
  });

  TextEditingController? labelcontainerController;

  TextEditingController? checkmarkController;

  CrearcuentaModel? crearcuentaModelObj;

  bool alcontinuaracep;

  @override
  List<Object?> get props => [
        labelcontainerController,
        checkmarkController,
        alcontinuaracep,
        crearcuentaModelObj,
      ];
  CrearcuentaState copyWith({
    TextEditingController? labelcontainerController,
    TextEditingController? checkmarkController,
    bool? alcontinuaracep,
    CrearcuentaModel? crearcuentaModelObj,
  }) {
    return CrearcuentaState(
      labelcontainerController:
          labelcontainerController ?? this.labelcontainerController,
      checkmarkController: checkmarkController ?? this.checkmarkController,
      alcontinuaracep: alcontinuaracep ?? this.alcontinuaracep,
      crearcuentaModelObj: crearcuentaModelObj ?? this.crearcuentaModelObj,
    );
  }
}
