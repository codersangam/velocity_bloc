part of 'my_checkbox_imports.dart';

@RoutePage()
class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key, required this.title});

  final String title;

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  /// Creating an Instance of controller or view_model
  MyCheckboxViewModel myCheckboxViewModel = MyCheckboxViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            children: [
              BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
                bloc: myCheckboxViewModel.isChecked,
                builder: (context, state) {
                  return Checkbox(
                    ///state.data holds the current state of checkbox
                    value: state.data,
                    onChanged: (value) {
                      ///when clicked on checkbox, checkbox is updtaed to false if true or true if it is false.
                      ///toggle() handles if true then false, if false then true.
                      myCheckboxViewModel.isChecked
                          .onUpdateData(state.data.toggle());
                    },
                  );
                },
              ),
              "My Checkbox".text.make(),
            ],
          ),
        ],
      ),
    );
  }
}
