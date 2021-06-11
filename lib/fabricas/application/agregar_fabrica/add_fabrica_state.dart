part of 'add_fabrica_bloc.dart';

@freezed
class AddFabricaState with _$AddFabricaState {
  const factory AddFabricaState({
    required Fabrica fabrica,
    required bool isSubmitting,
    required AutovalidateMode autovalidateMode,
    required Option<bool> saveFailOrSuccess,
  }) = _AddFabricaState;

  factory AddFabricaState.initial() {
    return AddFabricaState(
      fabrica: Fabrica.empty(),
      isSubmitting: false,
      autovalidateMode: AutovalidateMode.disabled,
      saveFailOrSuccess: none(),
    );
  }
}
