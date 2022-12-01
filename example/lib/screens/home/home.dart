part of 'home_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Velocity Bloc"),
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
              leading: data.screenName.text.bold.xl.make(),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}
