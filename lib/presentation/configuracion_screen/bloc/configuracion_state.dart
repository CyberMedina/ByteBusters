// ignore_for_file: must_be_immutable

part of 'configuracion_bloc.dart';

/// Represents the state of Configuracion in the application.
class ConfiguracionState extends Equatable {
  ConfiguracionState({this.configuracionModelObj});

  ConfiguracionModel? configuracionModelObj;

  @override
  List<Object?> get props => [
        configuracionModelObj,
      ];
  ConfiguracionState copyWith({ConfiguracionModel? configuracionModelObj}) {
    return ConfiguracionState(
      configuracionModelObj:
          configuracionModelObj ?? this.configuracionModelObj,
    );
  }
}
