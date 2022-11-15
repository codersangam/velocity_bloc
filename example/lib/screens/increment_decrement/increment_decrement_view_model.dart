import 'package:velocity_bloc/velocity_bloc.dart';

class IncrementDecrementViewModel {
  VelocityBloc<int> incrementBloc = VelocityBloc<int>(0);

  increment(data) {
    data++;
    incrementBloc.onUpdateData(data);
  }

  decrement(data) {
    data--;
    incrementBloc.onUpdateData(data);
  }
}
