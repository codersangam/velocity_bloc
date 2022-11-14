part of 'velocity_cubit.dart';

abstract class VelocityState<T> extends Equatable {
  final T data;
  final bool changed;
  final String error;
  const VelocityState(this.data, this.changed, this.error);
}

class VelocityInitialState<T> extends VelocityState<T> {
  const VelocityInitialState(T data) : super(data, false, "");

  @override
  List<Object> get props => [changed];
}

class VelocityUpdateState<T> extends VelocityState<T> {
  const VelocityUpdateState(T data, bool changed, String error)
      : super(data, changed, error);

  @override
  List<Object> get props => [changed];
}

class VelocityFailedState<T> extends VelocityState<T> {
  const VelocityFailedState(T data, bool changed, String error)
      : super(data, changed, error);

  @override
  List<Object> get props => [changed, error];
}
