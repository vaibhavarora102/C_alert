import 'package:calert/screens/video.dart';
import 'package:calert/widgets/roundbutton.dart';
import 'package:flutter/material.dart';
import 'package:calert/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: black,
          ),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        centerTitle: true,
        title: Text(
          'C Alert',
          style: TextStyle(
            color: black,
            decoration: TextDecoration.none,
            fontFamily: 'Montserrat',
          ),
        ),
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
      bottomNavigationBar: BottomAppBar(
        color: white,
        child: Row(
          children: [
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.home,
                size: 25,
              ),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.video_call),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return LiveSteam();
                //     },
                //   ),
                // );
                // Navigator.canPop(context);
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return DashBoard();
                //     },
                //   ),
                // );
                // Navigator.canPop(context);
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.account_circle_outlined, size: 25),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return AccountPage();
                //     },
                //   ),
                // );
                // Navigator.canPop(context);
              },
            ),
            Spacer(),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(90.0),
                child: RoundButton(
                  backgroundColor: orange,
                  fontFamily: 'Montserrat',
                  verticalMargin: 2,
                  horizontalPadding: 30,
                  fontSize: 14,
                  verticalPadding: 12,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Video();
                    }));
                  },
                  color: white,
                  text: 'start',
                  radius: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
