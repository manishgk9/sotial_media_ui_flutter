import 'package:attachapp/authapifetch/operations.dart';
import 'package:attachapp/auth_ui/signup.dart';
import 'package:attachapp/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

final loginp = LoginRequest();

class _SignInPageState extends State<SignInPage> {
  final username = TextEditingController();
  final password = TextEditingController();
  int count = 0;
  void loginbutton() {
    print('Hello Login clicked ${count}');

    var data = loginp.loginPost(username.text, password.text);
    print(data);
    if (data != null) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text('Login Page',
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 30, letterSpacing: .5)))),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text(
                                  'login and enjoy the world of internet',
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          letterSpacing: .5,
                                          wordSpacing: .4)))),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: 55,
                            child: TextFormField(
                                controller: username,
                                decoration: InputDecoration(
                                  hintStyle: GoogleFonts.lato(),
                                  hintText: "Enter the username",
                                  prefixIcon: Icon(Icons.person_outline),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: 55,
                            child: TextFormField(
                                controller: password,
                                decoration: InputDecoration(
                                  hintStyle: GoogleFonts.lato(),
                                  hintText: "Enter the Password",
                                  prefixIcon: Icon(Icons.lock_outline),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            onTap: () => loginbutton(),
                            child: Container(
                              height: 50,
                              child: Center(
                                  child: Text(
                                'LOGIN',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        letterSpacing: .5,
                                        color: Colors.white,
                                        wordSpacing: .4)),
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Center(
                              child: Text(
                            'Forgot Password ?',
                            style: GoogleFonts.lato(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          )),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "have not any account? ",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          letterSpacing: .5, wordSpacing: .4)),
                                ),
                                GestureDetector(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (cotext) => SignUnPage())),
                                  child: Text(
                                    'Signup',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: .5,
                                            wordSpacing: .4)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
