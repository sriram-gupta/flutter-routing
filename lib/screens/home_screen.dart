import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const List<Map<String, dynamic>> productList = [
    {"id": 1},
    {"id": 2},
    {"id": 3}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Column(
        children: [
          const Text('HomeScreen'),
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final id = productList[index]['id']; // Get the ID
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "/product", arguments: id);
                  },
                  title: Text(
                    id.toString(),
                    textDirection: TextDirection.ltr,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(const HomeScreen());
}
