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
      ),
      body: BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
        bloc: showHideDataViewModel.isHidden,
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              !state.data
                  ? "123456".text.xl3.makeCentered()
                  : "******".text.xl3.makeCentered(),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    showHideDataViewModel.isHidden
                        .onUpdateData(state.data.toggle());
                  },
                  child: !state.data
                      ? "Hide Data".text.make()
                      : "Show Data".text.makeCentered(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
