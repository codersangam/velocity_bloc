import 'package:velocity_bloc/velocity_bloc.dart';

class IncrementDecrementViewModel {
  // Set counter initial state as 0.
  VelocityBloc<int> counterBloc = VelocityBloc<int>(0);

  /// Function increases the counter by 1 and update the UI using onUpdateData().
  increment(data) {
    data++;
    counterBloc.onUpdateData(data);
  }

  /// Function decreases the counter by 1 and update the UI using onUpdateData().
  decrement(data) {
    data--;
    counterBloc.onUpdateData(data);
  }
}
