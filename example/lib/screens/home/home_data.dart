part of 'home_imports.dart';

class HomeData {
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
