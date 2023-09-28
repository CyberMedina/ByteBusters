// ignore_for_file: must_be_immutable

part of 'anadirdispositivo_bloc.dart';

/// Represents the state of Anadirdispositivo in the application.
class AnadirdispositivoState extends Equatable {
  AnadirdispositivoState({
    this.tilecontentoneController,
    this.anadirdispositivoModelObj,
  });

  TextEditingController? tilecontentoneController;

  AnadirdispositivoModel? anadirdispositivoModelObj;

  @override
  List<Object?> get props => [
        tilecontentoneController,
        anadirdispositivoModelObj,
      ];
  AnadirdispositivoState copyWith({
    TextEditingController? tilecontentoneController,
    AnadirdispositivoModel? anadirdispositivoModelObj,
  }) {
    return AnadirdispositivoState(
      tilecontentoneController:
          tilecontentoneController ?? this.tilecontentoneController,
      anadirdispositivoModelObj:
          anadirdispositivoModelObj ?? this.anadirdispositivoModelObj,
    );
  }
}
