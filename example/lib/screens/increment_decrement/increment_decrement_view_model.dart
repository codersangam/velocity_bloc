import 'package:velocity_bloc/velocity_bloc.dart';

class IncrementDecrementViewModel {
  VelocityBloc<int> counterBloc = VelocityBloc<int>(0);

  increment(data) {
    data++;
    counterBloc.onUpdateData(data);
  }

  decrement(data) {
    data--;
    counterBloc.onUpdateData(data);
  }
}
