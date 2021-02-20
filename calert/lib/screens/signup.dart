import 'package:flutter/material.dart';
import 'package:calert/constants.dart';
import 'package:calert/widgets/inputField.dart';
// import 'package:ohmanykart/Screens/homepage.dart';
import 'package:calert/widgets/roundButton.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: size.height * .13,
            ),
            Center(
              child: Container(
                height: size.height * .20,
                child: Text(
                  'C Alert',
                  style: TextStyle(
                    color: black,
                    decoration: TextDecoration.none,
                    fontFamily: 'Montserrat',
                    fontSize: 28,
                  ),
                ),
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage('assets/images/logo.png'),
                //     alignment: Alignment.topCenter,
                //   ),
                // ),
              ),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: InputFlied(
                color: black,
                color1: orange,
                fontFamily: 'Montsserat',
                fontSize: 18,
                text: 'First Name',
                obscure: false,
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: InputFlied(
                color: black,
                color1: orange,
                fontFamily: 'Montsserat',
                fontSize: 18,
                text: 'Last Name',
                obscure: false,
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: InputFlied(
                color: black,
                color1: orange,
                fontFamily: 'Montsserat',
                fontSize: 18,
                text: 'Email',
                obscure: false,
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: InputFlied(
                color: black,
                color1: orange,
                fontFamily: 'Montsserat',
                fontSize: 18,
                text: 'Phone No.',
                obscure: false,
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: InputFlied(
                color: black,
                color1: orange,
                fontFamily: 'Montsserat',
                fontSize: 18,
                text: 'Password',
                obscure: true,
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: InputFlied(
                color: black,
                color1: orange,
                fontFamily: 'Montsserat',
                fontSize: 18,
                text: 'Confirm Password',
                obscure: true,
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 88.0),
              child: SizedBox(
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
            ),
            SizedBox(
              height: size.height * .05,
            ),
          ],
        ),
      ),
    );
  }
}
