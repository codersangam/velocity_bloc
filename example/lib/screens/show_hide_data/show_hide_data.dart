part of 'show_hide_data_imports.dart';

@RoutePage()
class ShowHideData extends StatefulWidget {
  const ShowHideData({super.key, required this.title});

  final String title;

  @override
  State<ShowHideData> createState() => _ShowHideDataState();
}

class _ShowHideDataState extends State<ShowHideData> {
  @override
  Widget build(BuildContext context) {
    ShowHideDataViewModel showHideDataViewModel = ShowHideDataViewModel();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
        bloc: showHideDataViewModel.isHidden,
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                !state.data ? const Text("123456") : const Text("******"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      showHideDataViewModel.isHidden.onUpdateData(!state.data);
                    },
                    child: !state.data
                        ? const Text("Hide Data")
                        : const Text("Show Data"),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
