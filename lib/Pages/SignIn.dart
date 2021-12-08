import 'package:flutter/material.dart';
import 'package:zuebook/Pages/Annoucement.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool IshideText = true;
  bool IsChecked = false;

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
            /**
             * App Image
             */
            Container(
              child: Image.asset(
                'assets/imgs/book.png',
                height: 100.00,
              ),
            ),
            SizedBox(
              height: DEVICE_HEIGHT * 0.05,
            ),

            /**
             * Email & Password
             */

            Container(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Enter ZU Account Credentials",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                  ),

                  /**
                   * Email; & Password Text Fields
                   */

                  // Email
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: new OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0),
                        ),
                      ),
                    ),
                  ),

                  // Password
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      textAlign: TextAlign.left,
                      obscureText: IshideText,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              IshideText = IshideText ? false : true;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: IshideText
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                          ),
                        ),
                        hintText: "Password",
                        border: new OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: CheckboxListTile(
                      title: Text("Terms and Conditions"),
                      value: IsChecked,
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (bool value) {
                        setState(() {
                          IsChecked = IsChecked ? false : true;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            /**
             * Submit Button
             */

            GestureDetector(
              onTap: () => {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AnnoucementPage()))
              },
              child: Container(
                width: DEVICE_WIDTH * 0.8,
                height: 50,
                decoration: BoxDecoration(color: Colors.deepOrange),
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
                child: Center(
                  child: Text(
                    "SIGN IN",
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
