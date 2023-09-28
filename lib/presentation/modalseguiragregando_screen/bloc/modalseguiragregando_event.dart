// ignore_for_file: must_be_immutable

part of 'modalseguiragregando_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Modalseguiragregando widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ModalseguiragregandoEvent extends Equatable {}

/// Event that is dispatched when the Modalseguiragregando widget is first created.
class ModalseguiragregandoInitialEvent extends ModalseguiragregandoEvent {
  @override
  List<Object?> get props => [];
}
