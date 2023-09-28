// ignore_for_file: must_be_immutable

part of 'configuracion_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Configuracion widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfiguracionEvent extends Equatable {}

/// Event that is dispatched when the Configuracion widget is first created.
class ConfiguracionInitialEvent extends ConfiguracionEvent {
  @override
  List<Object?> get props => [];
}
