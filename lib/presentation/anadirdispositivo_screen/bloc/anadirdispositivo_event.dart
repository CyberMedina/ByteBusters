// ignore_for_file: must_be_immutable

part of 'anadirdispositivo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Anadirdispositivo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AnadirdispositivoEvent extends Equatable {}

/// Event that is dispatched when the Anadirdispositivo widget is first created.
class AnadirdispositivoInitialEvent extends AnadirdispositivoEvent {
  @override
  List<Object?> get props => [];
}
