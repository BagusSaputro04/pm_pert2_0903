import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      title: 'flutter Basic Widget',
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: Text("pertama"),
              onTap: () {},
            ),
            ListTile(
              title: Text("kedua"),
              onTap: () {},
            ),
            ListTile(
              title: Text("ketiga"),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: InkWell(child: Icon(Icons.menu), onTap: () {}),
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is Snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'halaman selanjutnya',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('halaman lanjut'),
                  ),
                  body: const Center(
                    child: Text(
                      'ini adalah halaman selanjutnya',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                );
              }));
            },
          )
        ],
      ),
    );
  }
}
