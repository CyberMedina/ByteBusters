// ignore_for_file: must_be_immutable

part of 'arduinoagregado_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Arduinoagregado widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ArduinoagregadoEvent extends Equatable {}

/// Event that is dispatched when the Arduinoagregado widget is first created.
class ArduinoagregadoInitialEvent extends ArduinoagregadoEvent {
  @override
  List<Object?> get props => [];
}
