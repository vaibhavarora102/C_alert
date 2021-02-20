import 'package:flutter/material.dart';
import 'package:calert/constants.dart';
import 'package:calert/widgets/roundbutton.dart';
import 'package:calert/screens/signinpage.dart';
import 'package:calert/screens/signup.dart';
import 'package:calert/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calert',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      color: white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: size.height * .3,
            child: Text(
              'C Alert',
              style: TextStyle(
                color: black,
                decoration: TextDecoration.none,
                fontFamily: 'Montserrat',
              ),
            ),
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/logo.png'),
            //     alignment: Alignment.topCenter,
            //   ),
            // ),
          ),
          SizedBox(
            height: size.height * .01,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .6,
            child: RoundButton(
              text: 'Sign In',
              fontFamily: 'Montserrat',
              fontSize: 14,
              color: white,
              backgroundColor: orange,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignIn();
                    },
                  ),
                );
              },
              verticalPadding: 14,
              verticalMargin: 0,
              horizontalPadding: 16,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .6,
            child: RoundButton(
              text: 'Sign Up',
              fontFamily: 'Montserrat',
              fontSize: 14,
              color: white,
              backgroundColor: orange,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUp();
                    },
                  ),
                );
              },
              verticalMargin: 25,
              verticalPadding: 14,
              horizontalPadding: 16,
            ),
          ),
          SizedBox(
            height: size.height * .05,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 26,
              ),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline2,
                  children: [
                    TextSpan(
                      text: 'Skip',
                      style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        letterSpacing: 1,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
