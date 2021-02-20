import 'package:flutter/material.dart';
import 'package:calert/constants.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: black,
          ),
          onPressed: () {},
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        centerTitle: true,
        title: Text(''), // TODO: enter text here
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: black,
            ),
            onPressed: null,
          ),
        ],
        backgroundColor: white,
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
      ),
      drawerEnableOpenDragGesture: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: size.height * .15,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/logo.png'),
            //   ),
            // ),
          ),
          SizedBox(
            height: size.height * .03,
          ),
          Text(
            'Lorem ipsum address',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: size.height * .015,
          ),
          Text(
            'Telephone: +91 9896XXXXXX,',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: size.height * .015,
          ),
          Text(
            'E-mail: support@abc.com,',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: size.height * .025,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text:
                    "Burglary being the serious problem can be easily detected by our application. This application will help to reduce burgulary to some extent by analysing and alerting. It detects the suspicious behavior such as opening of a door with some tools, trying to enter in the house by climbing walls. We can also send the location to the near by police station or the owner.",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Montserrat',
                  color: black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * .045,
          ),
          Container(
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  icon: Icon(
                    FontAwesome.facebook_official,
                    color: blue,
                    size: 25,
                  ),
                  onPressed: null,
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    FontAwesome.instagram,
                    color: Colors.pink,
                    size: 25,
                  ),
                  onPressed: null,
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    FontAwesome.twitter,
                    color: Colors.cyan,
                    size: 25,
                  ),
                  onPressed: null,
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    FontAwesome.internet_explorer,
                    color: Colors.cyan,
                    size: 25,
                  ),
                  onPressed: null,
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
