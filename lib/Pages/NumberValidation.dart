import 'package:flutter/material.dart';
import 'package:zuebook/Components/Dialogs.dart';
import 'package:zuebook/Pages/Annoucement.dart';
import 'package:zuebook/Pages/Library.dart';

class NumberValidatePage extends StatefulWidget {
  @override
  _NumberValidatePageState createState() => _NumberValidatePageState();
}

class _NumberValidatePageState extends State<NumberValidatePage> {
  @override
  Widget build(BuildContext context) {
    double DEVICE_WIDTH = MediaQuery.of(context).size.width;
    double DEVICE_HEIGHT = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
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
              height: DEVICE_HEIGHT * 0.02,
            ),
            /**
             * PIN CODE
             */
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Please Enter Numberical Code",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                  ),

                  /**
                   * Pin code
                   */

                  Container(
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: TextFormField(
                              showCursor: false,
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              style: TextStyle(fontSize: 64),
                              decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none,
                                  hintText: "-"),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: TextFormField(
                              showCursor: false,
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              style: TextStyle(fontSize: 64),
                              decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none,
                                  hintText: "-"),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: TextFormField(
                              showCursor: false,
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              style: TextStyle(fontSize: 64),
                              decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none,
                                  hintText: "-"),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: TextFormField(
                              showCursor: false,
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              style: TextStyle(fontSize: 64),
                              decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none,
                                  hintText: "-"),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: TextFormField(
                              showCursor: false,
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              style: TextStyle(fontSize: 64),
                              decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none,
                                  hintText: "-"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Password
                ],
              ),
            ),
            /**
             *  GET E- Book Button 
             */
            GestureDetector(
              onTap: () => {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => ConfimDialog(),
                ),
              },
              child: Container(
                width: DEVICE_WIDTH * 0.6,
                height: 50,
                decoration: BoxDecoration(color: Colors.deepOrange),
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
                child: Center(
                  child: Text(
                    "GET e-BOOK",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
