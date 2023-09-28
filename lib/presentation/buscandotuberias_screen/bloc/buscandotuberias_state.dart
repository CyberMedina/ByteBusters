// ignore_for_file: must_be_immutable

part of 'buscandotuberias_bloc.dart';

/// Represents the state of Buscandotuberias in the application.
class BuscandotuberiasState extends Equatable {
  BuscandotuberiasState({this.buscandotuberiasModelObj});

  BuscandotuberiasModel? buscandotuberiasModelObj;

  @override
  List<Object?> get props => [
        buscandotuberiasModelObj,
      ];
  BuscandotuberiasState copyWith(
      {BuscandotuberiasModel? buscandotuberiasModelObj}) {
    return BuscandotuberiasState(
      buscandotuberiasModelObj:
          buscandotuberiasModelObj ?? this.buscandotuberiasModelObj,
    );
  }
}
