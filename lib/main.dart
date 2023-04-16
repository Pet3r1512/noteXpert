import 'package:flutter/material.dart';
import 'home.dart';
import 'MaterialColor.dart';

import 'package:orm/logger.dart';

import './generated/prisma_client.dart';
// Color myColor = Color(0xFFffb3c1);

final prisma = PrismaClient(
  stdout: Event.values, // print all events to the console
  datasources: const Datasources(
    db: 'mongodb+srv://pttp15122002:Uh7HUtXGGcRVdwI3@notexpert.gdoldu9.mongodb.net/test',
  ),
);
void main() async {
  try {
    final user = await prisma.user.create(
      data: const UserCreateInput(
          username: "thanhphong", password: "15122002", name: "Thanh Phong"),
    );

    final note = await prisma.note.create(
        data: const NoteCreateInput(title: "New Note", content: "Test Prisma"));
  } finally {
    await prisma.$disconnect();
  }
  return runApp(MyApp());
}

enum _MenuValues {
  Share,
  Security,
  Privacy,
  Favorite,
  Settings,
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'noteXpert',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: buildMaterialColor(Color(0xFFffb3c1)),
        scaffoldBackgroundColor: buildMaterialColor(Color(0xFFfff0f3)),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('noteXpert'),
      ),
      body: Container(
        alignment: Alignment.topRight,
        child: PopupMenuButton(
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(child: Text('Share App'), value: _MenuValues.Share),
            PopupMenuItem(child: Text('Security'), value: _MenuValues.Security),
            PopupMenuItem(
                child: Text('Privacy Policy'), value: _MenuValues.Privacy),
            PopupMenuItem(child: Text('Favorite'), value: _MenuValues.Favorite),
            PopupMenuItem(child: Text('Settings'), value: _MenuValues.Settings),
          ],
          onSelected: (value) {
            switch (value) {
              case _MenuValues.Favorite:
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => Favorite()));
                break;
              case _MenuValues.Share:
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => Share()));
                break;
              case _MenuValues.Privacy:
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => Privacy()));
                break;
              case _MenuValues.Security:
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => Security()));
                break;
              case _MenuValues.Settings:
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => Settings()));
                break;
            }
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFffb3c1),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Color(0xFFffb3c1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  Text(
                    "Shop",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  Text(
                    "Favorite",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  Text(
                    "Setting",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('the Favorite page'),
      ),
    );
  }
}

class Share extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('the Share page'),
      ),
    );
  }
}

class Security extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('the Security page'),
      ),
    );
  }
}

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('the Privacy page'),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('the Settings page'),
      ),
    );
  }
}
