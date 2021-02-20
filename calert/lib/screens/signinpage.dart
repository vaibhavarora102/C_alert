import 'package:flutter/material.dart';
import 'package:calert/constants.dart';
import 'package:calert/screens/signup.dart';
import 'package:calert/widgets/inputField.dart';
import 'package:calert/widgets/roundButton.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: size.height * .15,
            ),
            Container(
              height: size.height * .25,
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
              height: size.height * .002,
            ),
            InputFlied(
              color: black,
              color1: orange,
              fontFamily: 'Montsserat',
              fontSize: 18,
              text: 'UserName',
              obscure: false,
            ),
            SizedBox(
              height: size.height * .05,
            ),
            InputFlied(
              color: black,
              color1: orange,
              fontFamily: 'Montsserat',
              fontSize: 18,
              text: 'Password',
              obscure: true,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundButton(
                text: 'Sign In',
                color: white,
                backgroundColor: orange,
                verticalMargin: 47,
                verticalPadding: 15,
                horizontalPadding: 5,
                fontFamily: 'Montserrat',
                fontSize: 14,
                press: () {},
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 26,
                ),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline2,
                    children: [
                      TextSpan(
                        text: "Forget Password? ",
                        style: TextStyle(
                          color: black,
                          fontStyle: FontStyle.italic,
                          fontSize: 12,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
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
                      return SignUp();
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
                        text: "Don't have an Account? ",
                        style: TextStyle(
                          color: black,
                          fontStyle: FontStyle.italic,
                          fontSize: 12,
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: black,
                          letterSpacing: 1,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
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
