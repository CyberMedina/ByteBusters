// ignore_for_file: must_be_immutable

part of 'inicioprincipal_bloc.dart';

/// Represents the state of Inicioprincipal in the application.
class InicioprincipalState extends Equatable {
  InicioprincipalState({
    this.replyController,
    this.replyoneController,
    this.inicioprincipalModelObj,
  });

  TextEditingController? replyController;

  TextEditingController? replyoneController;

  InicioprincipalModel? inicioprincipalModelObj;

  @override
  List<Object?> get props => [
        replyController,
        replyoneController,
        inicioprincipalModelObj,
      ];
  InicioprincipalState copyWith({
    TextEditingController? replyController,
    TextEditingController? replyoneController,
    InicioprincipalModel? inicioprincipalModelObj,
  }) {
    return InicioprincipalState(
      replyController: replyController ?? this.replyController,
      replyoneController: replyoneController ?? this.replyoneController,
      inicioprincipalModelObj:
          inicioprincipalModelObj ?? this.inicioprincipalModelObj,
    );
  }
}
