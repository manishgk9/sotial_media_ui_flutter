import 'package:attachapp/authapifetch/operations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUnPage extends StatelessWidget {
  const SignUnPage({super.key});
  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final password = TextEditingController();
    final email = TextEditingController();
    final repassword = TextEditingController();
    final signrequest = LoginRequest();
    void signupbutton() {
      print('SignUp Operation');
      signrequest.signupPost(
          username.text, email.text, password.text, repassword.text);
    }

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
                          Center(
                              child: Text('Signup page',
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 30,
                                          letterSpacing: .5,
                                          wordSpacing: .4)))),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text('lets create an account',
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
                                  prefixIcon: Icon(Icons.person_2_outlined),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: 55,
                            child: TextFormField(
                                controller: email,
                                decoration: InputDecoration(
                                  hintStyle: GoogleFonts.lato(),
                                  hintText: "Enter the username",
                                  prefixIcon: Icon(Icons.email_outlined),
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
                                  suffixIcon:
                                      Icon(Icons.remove_red_eye_outlined),
                                  prefixIcon: Icon(Icons.lock_outline),
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
                                controller: repassword,
                                decoration: InputDecoration(
                                  hintStyle: GoogleFonts.lato(),
                                  hintText: "Confirm password",
                                  suffixIcon:
                                      Icon(Icons.remove_red_eye_outlined),
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
                            onTap: () => signupbutton(),
                            child: Container(
                              height: 50,
                              child: Center(
                                  child: Text(
                                'SIGNUP',
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
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "alredy have an account? ",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          letterSpacing: .5, wordSpacing: .4)),
                                ),
                                GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: Text(
                                    'login',
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
