// ignore_for_file: must_be_immutable

part of 'modalseguiragregando_bloc.dart';

/// Represents the state of Modalseguiragregando in the application.
class ModalseguiragregandoState extends Equatable {
  ModalseguiragregandoState({
    this.pipedirectionController,
    this.modalseguiragregandoModelObj,
  });

  TextEditingController? pipedirectionController;

  ModalseguiragregandoModel? modalseguiragregandoModelObj;

  @override
  List<Object?> get props => [
        pipedirectionController,
        modalseguiragregandoModelObj,
      ];
  ModalseguiragregandoState copyWith({
    TextEditingController? pipedirectionController,
    ModalseguiragregandoModel? modalseguiragregandoModelObj,
  }) {
    return ModalseguiragregandoState(
      pipedirectionController:
          pipedirectionController ?? this.pipedirectionController,
      modalseguiragregandoModelObj:
          modalseguiragregandoModelObj ?? this.modalseguiragregandoModelObj,
    );
  }
}
