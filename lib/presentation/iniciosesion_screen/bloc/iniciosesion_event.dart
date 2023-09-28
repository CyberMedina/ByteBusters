// ignore_for_file: must_be_immutable

part of 'iniciosesion_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iniciosesion widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IniciosesionEvent extends Equatable {}

/// Event that is dispatched when the Iniciosesion widget is first created.
class IniciosesionInitialEvent extends IniciosesionEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends IniciosesionEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
