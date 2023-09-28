// ignore_for_file: must_be_immutable

part of 'crearcuenta_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Crearcuenta widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CrearcuentaEvent extends Equatable {}

/// Event that is dispatched when the Crearcuenta widget is first created.
class CrearcuentaInitialEvent extends CrearcuentaEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends CrearcuentaEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
