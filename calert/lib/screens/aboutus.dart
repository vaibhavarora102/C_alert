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
                    "Lorem Ipsum is simply dummy text of the ping and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown per took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leapo electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
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
