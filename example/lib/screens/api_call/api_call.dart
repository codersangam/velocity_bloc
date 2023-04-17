part of 'api_call_imports.dart';

@RoutePage()
class ApiCall extends StatefulWidget {
  const ApiCall({super.key, required this.title});

  final String title;

  @override
  State<ApiCall> createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Products()));
            },
            child: ListTile(
              leading: "Get Products".text.bold.xl.make(),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
