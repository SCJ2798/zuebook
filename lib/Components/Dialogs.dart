import 'package:flutter/material.dart';
import 'package:zuebook/Pages/Library.dart';

class ConfimDialog extends StatelessWidget {
  const ConfimDialog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                child: Text("e-Book Added \n Successfully!"),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: OutlinedButton(
                    style:
                        ButtonStyle(elevation: MaterialStateProperty.all(0.0)),
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LibraryPage())),
                    child: Text(
                      "OK",
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ])
      ],
    );
  }
}
