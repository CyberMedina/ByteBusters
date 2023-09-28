// ignore_for_file: must_be_immutable

part of 'iniciosesion_bloc.dart';

/// Represents the state of Iniciosesion in the application.
class IniciosesionState extends Equatable {
  IniciosesionState({
    this.checkmarkController,
    this.inputController,
    this.isShowPassword = true,
    this.iniciosesionModelObj,
  });

  TextEditingController? checkmarkController;

  TextEditingController? inputController;

  IniciosesionModel? iniciosesionModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        checkmarkController,
        inputController,
        isShowPassword,
        iniciosesionModelObj,
      ];
  IniciosesionState copyWith({
    TextEditingController? checkmarkController,
    TextEditingController? inputController,
    bool? isShowPassword,
    IniciosesionModel? iniciosesionModelObj,
  }) {
    return IniciosesionState(
      checkmarkController: checkmarkController ?? this.checkmarkController,
      inputController: inputController ?? this.inputController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      iniciosesionModelObj: iniciosesionModelObj ?? this.iniciosesionModelObj,
    );
  }
}
