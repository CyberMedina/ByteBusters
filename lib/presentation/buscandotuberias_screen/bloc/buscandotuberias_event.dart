// ignore_for_file: must_be_immutable

part of 'buscandotuberias_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Buscandotuberias widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BuscandotuberiasEvent extends Equatable {}

/// Event that is dispatched when the Buscandotuberias widget is first created.
class BuscandotuberiasInitialEvent extends BuscandotuberiasEvent {
  @override
  List<Object?> get props => [];
}
