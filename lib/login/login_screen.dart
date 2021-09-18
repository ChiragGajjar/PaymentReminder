import 'package:flutter/material.dart';
import 'package:payment_app/Utils/app_images.dart';
import 'package:payment_app/tabbarController.dart';

import '../search_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Column(
            children: [
              Container(
                height: 350,
                color: Color(0xFF8D04CE),
                child: Container(),
              ),
            ],
          ),
          Positioned(
            left: 250,
            top: 110,
            child: Image(
              height: 90,
              width: 90,
              image: AppImages.login_icon,
            ),
          ),
          Positioned(
            top: 140,
            left: 35,
            right: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "Welcome!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
           // top: 220,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Color(0xFFF2D8FF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 35, vertical: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.zero,
                          width: MediaQuery.of(context).size.width - 40,
                          child: Text(
                            "Sign in",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Username or email",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                      width: 0,
                                      color: Color(0xFF8E04CE),
                                      style: BorderStyle.none)),
                              filled: true,
                              hintStyle:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                              fillColor: Color(0xFF8E04CE),
                              hintText: 'Your username or email'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                      width: 0,
                                      color: Color(0xFF8E04CE),
                                      style: BorderStyle.none)),
                              filled: true,
                              contentPadding: EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              hintStyle:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                              fillColor: Color(0xFF8E04CE),
                              hintText: '******'),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Row(
                                  children: [
                                    Checkbox(
                                        activeColor: Colors.orange,
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked = value!;
                                          });
                                        }),
                                    Text("Remember me")
                                  ],
                                ),
                              ),
                            ),
                            Text("Forgot Password?")
                          ],
                        ),
                        Container(
                          height: 50,
                          // width: 150,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => TabBarScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.orange,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            "Or",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          // width: 150,
                          child: InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color(0xFFECC2FF),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(
                                    image: AppImages.google_logo,
                                    width: 20.0,
                                    height: 20.0,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Login with google",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                            },
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account?",
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    " Sign Up",
                                    style: TextStyle(fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
