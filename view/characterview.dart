import 'package:flutter/material.dart';
import 'package:movietugas/control/charactercontroller.dart';
import 'package:movietugas/model/charactermodel.dart';
import 'package:movietugas/wiget/modelwiget.dart';

class Characterview extends StatefulWidget {
  const Characterview({super.key});

  @override
  State<Characterview> createState() => _CharacterviewState();
}

class _CharacterviewState extends State<Characterview> {
  final formkey = GlobalKey<FormState>();
  Charactercontroller charactercontroller = Charactercontroller();
  TextEditingController name = TextEditingController();
  TextEditingController overview = TextEditingController();
  TextEditingController gamename = TextEditingController();
  TextEditingController voteAverage = TextEditingController();
  List buttonChoice = ["Edit", "Delete"];
  List? character;
  int? characterId;

  // Define the addItem method
  Widget addItem(dynamic character) {
    // You can customize this widget as needed
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(character == null ? 'Add Character' : 'Edit Character'),
          // Add your form fields here
        ],
      ),
    );
  }

  getCharacter() async {
    setState(() {
      character = charactercontroller.characters;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCharacter();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Character List"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                character;
              });
              Modelwiget().showfullModal(context, addItem(null));
            },
            onLongPress: () {
              setState(() {
                charactercontroller;
              });
              Modelwiget().showfullModal(context, addItem(null));
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: character?.length ?? 0,
        itemBuilder: (context, index) {
  final char = character![index] as Charactermodel;
  return Card(
    child: ListTile(
      leading: Image(image: AssetImage(char.posterPath)),
      title: Text(char.name),
      trailing: PopupMenuButton(
        itemBuilder: (BuildContext context) {
          return buttonChoice.map((choice) {
            return PopupMenuItem(
              value: choice,
              child: Text(choice),
              onTap: () {
                if (choice == "Edit") {
                  Modelwiget().showfullModal(context, addItem(char));
                } else if (choice == "Delete") {
                  setState(() {
                    character?.removeWhere((c) => c.id == char.id);
                  });
                }
              },
            );
          }).toList();
        },
      ),
    ),
  );
}

    ),
    );
  }
}