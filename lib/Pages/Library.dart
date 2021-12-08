import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:zuebook/Components/SideDrawer.dart';
import 'package:zuebook/Pages/BookView.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  Widget build(BuildContext context) {
    double DEVICE_WIDTH = MediaQuery.of(context).size.width;
    double DEVICE_HEIGHT = MediaQuery.of(context).size.height;

    /**
     * 
     * E Books & Physical Books Array
     * 
     */

    var ebooks = [
      {'imgUrl': 'assets/imgs/book.png', 'name': 'SEC 235'},
      {'imgUrl': 'assets/imgs/book.png', 'name': 'SEC 236'},
    ];

    var physicalbooks = [
      {'imgUrl': 'assets/imgs/book.png', 'name': 'SEC 235'},
    ];

    /**
     * 
     */

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
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.book,
                        size: 32.0,
                        color: Colors.orange,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Text(
                        "Library",
                        style: TextStyle(
                          fontSize: 32.0,
                          color: Colors.orange,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              /**
               * 
               * E - Books List View
               * 
               */

              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.only(bottom: 8.0),
                width: DEVICE_WIDTH * 0.5,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 1.0),
                  ),
                ),
                child: Text(
                  "E-Books",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              SizedBox(
                width: DEVICE_WIDTH * 1,
                height: DEVICE_HEIGHT * 0.3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...List.generate(ebooks.length, (index) {
                      return GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => BookViewPage())),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            children: [
                              Container(
                                width: DEVICE_WIDTH * 100,
                                height: 200,
                                margin: EdgeInsets.only(top: 8.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(ebooks[index]['imgUrl']),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8.0),
                                child: Text(ebooks[index]['name']),
                              )
                            ],
                          ),
                          width: DEVICE_WIDTH * 0.3,
                          height: DEVICE_HEIGHT * 0.6,
                        ),
                      );
                    })
                  ],
                ),
              ),

              /**
               * 
               * Physical Book List View
               * 
               */

              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.only(bottom: 8.0),
                width: DEVICE_WIDTH * 0.5,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 1.0),
                  ),
                ),
                child: Text(
                  "Physical Books",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              SizedBox(
                width: DEVICE_WIDTH * 1,
                height: DEVICE_HEIGHT * 0.3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...List.generate(physicalbooks.length, (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: [
                            Container(
                              width: DEVICE_WIDTH * 100,
                              height: 200,
                              margin: EdgeInsets.only(top: 8.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    physicalbooks[index]['imgUrl'],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              child: Text(
                                physicalbooks[index]['name'],
                              ),
                            )
                          ],
                        ),
                        width: DEVICE_WIDTH * 0.3,
                        height: DEVICE_HEIGHT * 0.6,
                      );
                    })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
