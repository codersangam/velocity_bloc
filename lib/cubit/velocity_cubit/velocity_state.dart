part of 'velocity_cubit.dart';

sealed class VelocityState<T> extends Equatable {
  final T data;
  final bool changed;
  final String error;
  const VelocityState(this.data, this.changed, this.error);
}

/// VelocityInitialState
///
/// This is the initial state of the VelocityBloc.
///
/// You can show the CircularProgressIndicator or
///
/// Other Widgets in VelocityInitialState while the
///
/// data being fetched/loaded from API.
class VelocityInitialState<T> extends VelocityState<T> {
  const VelocityInitialState(T data) : super(data, false, "");

  @override
  List<Object> get props => [changed];
}

/// VelocityUpdateState
///
/// This is the update/loaded state of the VelocityBloc.
///
/// You can display updated data here.
class VelocityUpdateState<T> extends VelocityState<T> {
  const VelocityUpdateState(super.data, super.changed, super.error);

  @override
  List<Object> get props => [changed];
}

/// VelocityFailedState
///
/// This is the Failed/Error state of the VelocityBloc.
///
/// You can display the error/exception message here.
///
/// You can even display custom message here.
class VelocityFailedState<T> extends VelocityState<T> {
  const VelocityFailedState(super.data, super.changed, super.error);

  @override
  List<Object> get props => [changed, error];
}
