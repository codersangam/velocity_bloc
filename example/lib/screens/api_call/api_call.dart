part of 'api_call_imports.dart';

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
          20.heightBox,
          "Get Products".text.bold.xl.make().onTap(
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Products()));
            },
          ),
        ],
      ).pSymmetric(h: 15),
    );
  }
}
