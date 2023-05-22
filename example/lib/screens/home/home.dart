part of 'home_imports.dart';

@RoutePage()
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Velocity Bloc"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: HomeViewModel.screensList.length,
        itemBuilder: (context, index) {
          var data = HomeViewModel.screensList[index];
          return InkWell(
            onTap: () {
              if (index == 0) {
                AutoRouter.of(context)
                    .push(IncrementDecrementRoute(title: data.screenName));
              } else if (index == 1) {
                AutoRouter.of(context)
                    .push(MyCheckboxRoute(title: data.screenName));
              } else if (index == 2) {
                AutoRouter.of(context)
                    .push(ShowHideDataRoute(title: data.screenName));
              } else {
                AutoRouter.of(context)
                    .push(ApiCallRoute(title: data.screenName));
              }
            },
            child: ListTile(
              leading: Text(
                data.screenName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}
