import 'package:flutter/material.dart';
import 'package:zuebook/Pages/SignIn.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    /**
     * Get device Width & Height
     */
    double DEVICE_WIDTH = MediaQuery.of(context).size.width;
    double DEVICE_HEIGHT = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: DEVICE_WIDTH,
          height: DEVICE_HEIGHT,
          decoration: BoxDecoration(

              /**
               * If you want to add a background image, remove comments and put image path in AssetImage()
               */

              // image: DecorationImage(
              //   image: AssetImage('{path}'),
              //   fit: BoxFit.cover,
              // ),

              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /**
               * Images (App logo)
               * if you want change them , put images into "assets/imgs" folder & enter path in asset() function as the following
               */
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/imgs/book.png',
                    height: 100.00,
                  ),
                  Image.asset(
                    'assets/imgs/book.png',
                    height: 100.00,
                  ),
                ],
              ),
              SizedBox(
                height: DEVICE_HEIGHT * 0.08,
              ),

              /**
               * Text
               */

              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Welcome to ZU",
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.0),
                child: Text(
                  "E Book Application",
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w400),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(12),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.orange,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 32, horizontal: 12),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.orange,
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              ),

              /**
               * 
               * 
               */

              Container(
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  "Side right to",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
                ),
              ),
              GestureDetector(
                onTap: () {
                  /**
                   * Navigate to Sigin In Page
                   */
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Sign in",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
