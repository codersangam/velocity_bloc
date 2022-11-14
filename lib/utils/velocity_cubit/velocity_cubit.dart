import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'velocity_state.dart';

class VelocityBloc<T> extends Cubit<VelocityState<T>> {
  VelocityBloc(T data) : super(VelocityInitialState<T>(data));

  onUpdateData(T data) {
    emit(VelocityUpdateState<T>(data, !state.changed, state.error));
  }

  onFailedResponse({String error = ""}) {
    emit(VelocityFailedState<T>(state.data, !state.changed, error));
  }

  onUpdateToInitState(T data) {
    emit(VelocityInitialState<T>(data));
  }
}
