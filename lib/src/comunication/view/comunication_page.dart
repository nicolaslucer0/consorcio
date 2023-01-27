import 'package:flutter/material.dart';

class ComunicationPage extends StatefulWidget {
  const ComunicationPage({super.key});

  @override
  ComunicationPageState createState() => ComunicationPageState();
}

class ComunicationPageState extends State<ComunicationPage> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(50, (i) => "Item $i");
  var items = <String>[];

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = <String>[];
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = <String>[];
      for (var item in dummySearchList) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      }
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              filterSearchResults(value);
            },
            controller: editingController,
            decoration: const InputDecoration(
                labelText: "Buscar",
                hintText: "Buscar",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
