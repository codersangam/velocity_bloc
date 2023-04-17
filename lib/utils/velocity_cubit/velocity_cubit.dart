import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'velocity_state.dart';

class VelocityBloc<T> extends Cubit<VelocityState<T>> {
  VelocityBloc(T data) : super(VelocityInitialState<T>(data));

  /// This method is called to update the state
  ///
  /// of the current widget.
  onUpdateData(T data) {
    emit(VelocityUpdateState<T>(data, !state.changed, state.error));
  }

  /// This method is called to display
  ///
  /// the custom or default failed message
  ///
  /// or exception.
  onFailedResponse({required String error}) {
    emit(VelocityFailedState<T>(state.data, !state.changed, error));
  }

  onUpdateToInitState(T data) {
    emit(VelocityInitialState<T>(data));
  }
}
