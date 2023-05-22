import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'velocity_state.dart';

class VelocityBloc<T> extends Cubit<VelocityState<T>> {
  VelocityBloc(T data) : super(VelocityInitialState<T>(data));

  /// English: This method is called to update the state of the current widget.
  ///
  /// हिन्दि: अभि के जो Widget है, उसको अप्डेट कर्ने के लिए हम ये Method प्रयोग करते है।
  ///
  /// नेपाली: हाल्को Widget लाई अप्डेट गर्न यो Method प्रयोग गरिन्छ।
  onUpdateData(T data) {
    emit(VelocityUpdateState<T>(data, !state.changed, state.error));
  }

  /// English: This method is called to display the custom or default failed message or exception.
  ///
  /// हिन्दि: इस विधि को कस्टम या डिफ़ॉल्ट विफल संदेश या अपवाद प्रदर्शित करने के लिए कहा जाता है।
  ///
  /// नेपाली: यो विधि अनुकूलन वा पूर्वनिर्धारित असफल सन्देश वा अपवाद प्रदर्शन गर्नको प्रयोग गरिन्छ।
  onFailedResponse({required String error}) {
    emit(VelocityFailedState<T>(state.data, !state.changed, error));
  }

  onUpdateToInitState(T data) {
    emit(VelocityInitialState<T>(data));
  }
}
