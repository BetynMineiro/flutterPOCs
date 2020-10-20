import 'package:flutter/material.dart';
import 'package:shopping/pages/home.page.dart';
import 'package:shopping/pages/singup.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: Color(0xFFF5F5F5),
            padding: EdgeInsets.only(
              top: 40,
              left: 20,
              right: 20,
              bottom: 40,
            ),
            child: Column(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black12,
                        offset: new Offset(1, 2.0),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 40),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Welcome,",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Sign in to continue",
                                ),
                              ],
                            ),
                            FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SingupPage(),
                                  ),
                                );
                              },
                              child: Text("Sign Up"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            onPressed: () {},
                            child: Text("Forgot your Password?"),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Text(
                    "- Or -",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          height: 24,
                          width: 100,
                          child: Image.asset("assets/facebook.png"),
                        ),
                        Text("Sing in with Facebook"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          height: 24,
                          width: 100,
                          child: Image.asset("assets/google.png"),
                        ),
                        Text("Sing in with Google"),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
