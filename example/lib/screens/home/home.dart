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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IncrementDecrement(
                      title: data.screenName,
                    ),
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ApiCall(
                      title: data.screenName,
                    ),
                  ),
                );
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
