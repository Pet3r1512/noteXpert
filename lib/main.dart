import 'package:flutter/material.dart';
import 'package:notexpert_mongo/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';
import 'MaterialColor.dart';

//
// import 'package:orm/logger.dart';
//
// import './generated/prisma_client.dart';
// // Color myColor = Color(0xFFffb3c1);
//
// final prisma = PrismaClient(
//   stdout: Event.values, // print all events to the console
//   datasources: const Datasources(
//     db: 'mongodb+srv://pttp15122002:Uh7HUtXGGcRVdwI3@notexpert.gdoldu9.mongodb.net/test',
//   ),
// );
void main() async {
  // try {
  //   final user = await prisma.user.create(
  //     data: const UserCreateInput(
  //         username: "thanhphong", password: "15122002", name: "Thanh Phong"),
  //   );
  //
  //   final note = await prisma.note.create(
  //       data: const NoteCreateInput(title: "New Note", content: "Test Prisma"));
  // } finally {
  //   await prisma.$disconnect();
  // }
  // return
  runApp(MyApp());
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
      home: SignUp(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var noteList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('noteXpert'),
      ),
      body: Container(
        alignment: Alignment.topRight,
        child: ListView(
          children: noteList
              .map((e) => ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => EditNote(note: e),
                          ));
                    },
                    leading: Icon(Icons.list),
                    title: Text(e['title'] as String),
                    subtitle: Text(e['message'] as String),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)),
                  ))
              .toList(),
        ),
        // child: PopupMenuButton(
        //   itemBuilder: (BuildContext context) => [
        //     PopupMenuItem(child: Text('Share App'), value: _MenuValues.Share),
        //     PopupMenuItem(child: Text('Security'), value: _MenuValues.Security),
        //     PopupMenuItem(
        //         child: Text('Privacy Policy'), value: _MenuValues.Privacy),
        //     PopupMenuItem(child: Text('Favorite'), value: _MenuValues.Favorite),
        //     PopupMenuItem(child: Text('Settings'), value: _MenuValues.Settings),
        //   ],
        //   onSelected: (value) {
        //     switch (value) {
        //       case _MenuValues.Favorite:
        //         Navigator.of(context)
        //             .push(MaterialPageRoute(builder: (c) => Favorite()));
        //         break;
        //       case _MenuValues.Share:
        //         Navigator.of(context)
        //             .push(MaterialPageRoute(builder: (c) => Share()));
        //         break;
        //       case _MenuValues.Privacy:
        //         Navigator.of(context)
        //             .push(MaterialPageRoute(builder: (c) => Privacy()));
        //         break;
        //       case _MenuValues.Security:
        //         Navigator.of(context)
        //             .push(MaterialPageRoute(builder: (c) => Security()));
        //         break;
        //       case _MenuValues.Settings:
        //         Navigator.of(context)
        //             .push(MaterialPageRoute(builder: (c) => Settings()));
        //         break;
        //     }
        //   },
        // ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var note = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ct) => EditNote(),
            ),
          );
          if (note != null) {
            setState(() {
              noteList.add(note);
            });
          }
        },
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

class EditNote extends StatefulWidget {
  var note;
  EditNote({this.note, super.key});
  @override
  State<EditNote> createState() => _EditNoteState();
}

class Note {}

class _EditNoteState extends State<EditNote> {
  var _key = GlobalKey<FormState>();
  var focus = FocusNode();
  String title = '';
  String message = '';

  void _saveForm() async {
    if (_key.currentState?.validate() ?? false) {
      _key.currentState?.save();
      Navigator.pop(context, {'title': title, 'message': message});
    } else {
      focus.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(widget.note != null ? 'Edit Note' : 'New Note')),
      body: Form(
          key: _key,
          child: Container(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    initialValue:
                        widget.note != null ? widget.note['title'] : ' ',
                    focusNode: focus,
                    onSaved: (v) {
                      title = v ?? '';
                    },
                    validator: (v) {
                      if (v == null || v.isEmpty) return 'Please enter title';
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Title'),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    initialValue:
                        widget.note != null ? widget.note['message'] : ' ',
                    onSaved: (v) {
                      message = v ?? '';
                    },
                    validator: (v) {
                      if (v == null || v.isEmpty) return 'Please enter content';
                      if (v.length < 10) return 'Note content is to short';
                      return null;
                    },
                    maxLines: 10,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Content'),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  ElevatedButton(
                      onPressed: _saveForm,
                      child: Text(
                          widget.note != null ? 'Save Changes' : 'Create Note'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50),
                      )),
                ],
              ),
            ),
          )),
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
