part of 'increment_decrement_imports.dart';

@RoutePage()
class IncrementDecrement extends StatefulWidget {
  const IncrementDecrement({super.key, required this.title});

  final String title;

  @override
  State<IncrementDecrement> createState() => _IncrementDecrementState();
}

class _IncrementDecrementState extends State<IncrementDecrement> {
  /// Creating an Instance of controller or view_model
  IncrementDecrementViewModel incrementDecrementViewModel =
      IncrementDecrementViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: BlocBuilder<VelocityBloc<int>, VelocityState<int>>(
        bloc: incrementDecrementViewModel.counterBloc,
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///state.data holds the current state.
                Text(
                  state.data.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      ///Triggering the increment function after tapping on button
                      onPressed: () =>
                          incrementDecrementViewModel.increment(state.data),
                      label: const Text("Increment"),
                      icon: const Icon(Icons.add),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton.icon(
                      ///Triggering the increment function after tapping on button
                      onPressed: () =>
                          incrementDecrementViewModel.decrement(state.data),
                      label: const Text("Decrement"),
                      icon: const Icon(Icons.remove),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
