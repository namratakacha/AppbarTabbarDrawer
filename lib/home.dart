import 'package:appbar_tabbar_drawer/firsttab.dart';
import 'package:appbar_tabbar_drawer/secondtab.dart';
import 'package:appbar_tabbar_drawer/thirdtab.dart';
import 'package:flutter/material.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  _HomeSreenState createState() => _HomeSreenState();
}

// class MyBar extends AppBar {
//   MyBar({Key? key, required Widget title})
//       : super(
//             key: key,
//             title: title,
//             actions: <Widget>[Icon(Icons.account_circle)]);
// }

class _HomeSreenState extends State<HomeSreen> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          key: _scaffoldKey,
          endDrawer: Drawer(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                    child: Text(
                      'Namrata Kacha',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.pink),
                    ),
                    color: Colors.lime,
                    height: 50,
                    width: double.infinity),
              ],
            ),
          ),
          drawer: Drawer(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                    child: Text(
                      'This is demo of Drawer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    color: Colors.pink,
                    height: 50,
                    width: double.infinity)
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Appbar_Tabbar_Drawer'),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.lime, Colors.pink],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft)),
            ),
            foregroundColor: Colors.black,
            elevation: 20,
            titleSpacing: 4,
            actions: [
              IconButton(
                  onPressed: () => _scaffoldKey.currentState?.openEndDrawer(),
                  icon: Icon(Icons.account_circle))
            ],
            leading: IconButton(
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                icon: Icon(Icons.arrow_forward_ios_sharp)),
            bottom: TabBar(indicatorColor: Colors.white, tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(
                icon: Icon(Icons.camera_alt),
                text: 'Take photo',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              FirstTab(),
              SecondTab(),
              ThirdTab(),
            ],
          )),
    );
  }
}
