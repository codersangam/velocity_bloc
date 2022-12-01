part of 'my_checkbox_imports.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key, required this.title});

  final String title;

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
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
                    value: state.data,
                    onChanged: (value) {
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
