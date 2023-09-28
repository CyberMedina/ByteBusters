// ignore_for_file: must_be_immutable

part of 'descripciontuberia_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Descripciontuberia widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DescripciontuberiaEvent extends Equatable {}

/// Event that is dispatched when the Descripciontuberia widget is first created.
class DescripciontuberiaInitialEvent extends DescripciontuberiaEvent {
  @override
  List<Object?> get props => [];
}
