// ignore_for_file: must_be_immutable

part of 'inicioprincipal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Inicioprincipal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioprincipalEvent extends Equatable {}

/// Event that is dispatched when the Inicioprincipal widget is first created.
class InicioprincipalInitialEvent extends InicioprincipalEvent {
  @override
  List<Object?> get props => [];
}
