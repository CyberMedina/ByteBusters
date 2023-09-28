// ignore_for_file: must_be_immutable

part of 'inicio_bloc.dart';

/// Represents the state of Inicio in the application.
class InicioState extends Equatable {
  InicioState({
    this.replyController,
    this.replyoneController,
    this.inicioModelObj,
  });

  TextEditingController? replyController;

  TextEditingController? replyoneController;

  InicioModel? inicioModelObj;

  @override
  List<Object?> get props => [
        replyController,
        replyoneController,
        inicioModelObj,
      ];
  InicioState copyWith({
    TextEditingController? replyController,
    TextEditingController? replyoneController,
    InicioModel? inicioModelObj,
  }) {
    return InicioState(
      replyController: replyController ?? this.replyController,
      replyoneController: replyoneController ?? this.replyoneController,
      inicioModelObj: inicioModelObj ?? this.inicioModelObj,
    );
  }
}
