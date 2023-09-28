// ignore_for_file: must_be_immutable

part of 'arduinoagregado_bloc.dart';

/// Represents the state of Arduinoagregado in the application.
class ArduinoagregadoState extends Equatable {
  ArduinoagregadoState({this.arduinoagregadoModelObj});

  ArduinoagregadoModel? arduinoagregadoModelObj;

  @override
  List<Object?> get props => [
        arduinoagregadoModelObj,
      ];
  ArduinoagregadoState copyWith(
      {ArduinoagregadoModel? arduinoagregadoModelObj}) {
    return ArduinoagregadoState(
      arduinoagregadoModelObj:
          arduinoagregadoModelObj ?? this.arduinoagregadoModelObj,
    );
  }
}
