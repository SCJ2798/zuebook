import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:zuebook/Components/SideDrawer.dart';

class AnnoucementPage extends StatefulWidget {
  @override
  _AnnoucementPageState createState() => _AnnoucementPageState();
}

class _AnnoucementPageState extends State<AnnoucementPage> {
  int initialVal = 1;

  // ignore: slash_for_doc_comments
  /**
   *  Annoucements Images url 
   *  if you want add more annoucements image . put these as follow into annoucements array
   * { 'imgUrl':'< image_path >'}
   * 
   */

  var annoucements = [
    {'imgUrl': 'assets/imgs/book.png'},
    {'imgUrl': 'assets/imgs/book.png'},
    {'imgUrl': 'assets/imgs/book.png'},
    {'imgUrl': 'assets/imgs/book.png'},
    {'imgUrl': 'assets/imgs/book.png'},
    {'imgUrl': 'assets/imgs/book.png'}
  ];

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/imgs/book.png',
                height: 100.00,
              ),
            ),
            SizedBox(
              width: DEVICE_WIDTH * 1,
              height: DEVICE_HEIGHT * 0.02,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "ZU \n Annoucement",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
              ),
            ),

            /**
             * 
             * Annoucements list view
             * 
             */

            SizedBox(
              width: DEVICE_WIDTH * 1,
              height: DEVICE_HEIGHT * 0.3,
              child: RotatedBox(
                quarterTurns: 3,
                child: ListWheelScrollView(
                  controller:
                      FixedExtentScrollController(initialItem: initialVal),
                  onSelectedItemChanged: (val) {
                    print(val);
                    setState(() {
                      initialVal = val;
                    });
                  },
                  offAxisFraction: 0.1,
                  useMagnifier: false,
                  itemExtent: DEVICE_WIDTH * 0.4,
                  diameterRatio: 2.0,
                  magnification: 1.0,
                  children: [
                    ...List.generate(annoucements.length, (index) {
                      return RotatedBox(
                        quarterTurns: 1,
                        child: Container(
                          child: Image.asset(annoucements[index]['imgUrl']),
                          width: DEVICE_WIDTH * 0.5,
                          height: DEVICE_HEIGHT * 0.6,
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),

            /**
             * 
             * 
             */

            SizedBox(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(annoucements.length, (index) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: index == initialVal ? Colors.orange : null,
                      border: index == initialVal
                          ? null
                          : Border.all(color: Colors.orange, width: 1.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
