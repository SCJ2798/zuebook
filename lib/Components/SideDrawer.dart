import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zuebook/Pages/Library.dart';
import 'package:zuebook/Pages/NumberValidation.dart';

class SideDrawer extends StatelessWidget {
  double DEVICE_WIDTH;
  double DEVICE_HEIGHT;

  SideDrawer(this.DEVICE_WIDTH, this.DEVICE_HEIGHT);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16);

    return Drawer(
      child: Center(
        child: Column(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        child: Icon(Icons.menu),
                      ),
                    )
                  ],
                ),
                Container(
                  width: DEVICE_WIDTH * 0.15,
                  height: DEVICE_WIDTH * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Icon(
                    Icons.person,
                    size: 48.0,
                    color: Colors.orange,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    "201808478",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    "Collage of Technological Innovation",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: DEVICE_HEIGHT * 0.02,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text(
                      "Account",
                      style: textStyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_library),
                    title: Text(
                      "Get e-Book",
                      style: textStyle,
                    ),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NumberValidatePage())),
                  ),
                  ListTile(
                    leading: Icon(Icons.auto_stories),
                    title: Text(
                      "Library",
                      style: textStyle,
                    ),
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LibraryPage())),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(
                      "Settings",
                      style: textStyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text(
                      "Language",
                      style: textStyle,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
