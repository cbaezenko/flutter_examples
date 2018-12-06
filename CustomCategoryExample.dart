import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primaryColor: Colors.green),
      home: Scaffold(
          backgroundColor: Colors.greenAccent,
          appBar: AppBar(
            title: Text('Task 02 Category Widget'),
          ),
          body: CustomCategory())));
}

class CustomCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
            highlightColor: Colors.green,
            onTap: () {
              Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
            },
            child: Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.fromLTRB(16.00, 0.0, 0.0, 0.0),
                  child: Icon(
                    Icons.android,
                    size: 60.0,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Android',
                      style: const TextStyle(fontSize: 24.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
