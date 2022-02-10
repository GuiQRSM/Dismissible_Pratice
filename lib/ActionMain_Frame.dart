import 'package:flutter/material.dart';

class ActionMain extends StatefulWidget {
  const ActionMain({Key? key}) : super(key: key);

  @override
  _ActionMainState createState() => _ActionMainState();
}

class _ActionMainState extends State<ActionMain> {

  List _itemList = ["Item: 1", "Item: 2", "Item: 3", "Item: 4", "Item: 5"];
  var mainColor = Color.fromRGBO(92, 138, 138, 1);
  var secColor = Color.fromRGBO(159, 223, 190, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secColor,
      appBar: AppBar(
        title: Text("Dismissible Pratice"),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
          color: secColor
        ),
        backgroundColor: mainColor,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    itemCount: _itemList.length,
                    itemBuilder: (context, index){

                      return ListTile(
                        title: Text(
                          _itemList[index],
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: mainColor
                          ),
                        ),
                      );

                    },
                ),
            ),
          ],
        ),
      ),
    );
  }
}
