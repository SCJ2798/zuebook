import 'package:flutter/material.dart';
import 'package:zuebook/Components/SideDrawer.dart';

class BookViewPage extends StatefulWidget {
  @override
  _BookViewPageState createState() => _BookViewPageState();
}

class _BookViewPageState extends State<BookViewPage> {
  @override
  Widget build(BuildContext context) {
    double DEVICE_WIDTH = MediaQuery.of(context).size.width;
    double DEVICE_HEIGHT = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.0),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: SideDrawer(DEVICE_WIDTH, DEVICE_HEIGHT),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Text(
                        "Prologue: Bobble \n Draper",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 28.0,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.only(bottom: 8.0),
                width: DEVICE_WIDTH,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec mi eget odio consectetur vestibulum. Nullam eu commodo arcu. Aenean ornare vitae elit semper volutpat. Morbi congue hendrerit ligula, eu semper felis elementum suscipit. Vivamus iaculis eros sit amet lectus tempus hendrerit. Fusce gravida ante nunc, sit amet sollicitudin ipsum lacinia eget. Aliquam congue varius auctor. Nam efficitur at justo ut placerat. Duis sit amet nulla lectus. Cras accumsan, sem eu luctus viverra, enim turpis ultrices elit, quis dignissim ipsum tellus vitae lacus. Ut diam nulla, accumsan eget consectetur quis, porta aliquam tortor. Aliquam consequat eros odio, quis eleifend nisl semper in. Nam id molestie lectus. Quisque at ante at turpis feugiat malesuada. Cras in quam efficitur, hendrerit turpis a, laoreet diam. Cras felis ex, porta et nibh eget, scelerisque varius lectus. Nam nec volutpat nisi, at porta justo. Etiam sollicitudin nisi in enim sodales, a mattis felis ultrices. Nam lacus ante, maximus sed enim rhoncus, convallis mollis dolor. Etiam ut venenatis augue. Maecenas id tristique tortor.  ",
                  style: TextStyle(fontSize: 18.0, wordSpacing: 12.0),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(60.0)),
                    child: Icon(Icons.arrow_downward),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
