import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        InkWell(
          onTap: () => _scaffoldKey.currentState?.openDrawer(),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.pink,
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.pink,
                      offset: const Offset(5.0, 5.0),
                      blurRadius: 10,
                      spreadRadius: 2.0)
                ]),
            child: Text(
              'Drawer1',
              style: TextStyle(color: Colors.white, fontSize: 12),
              textAlign: TextAlign.center,
            ),
            height: 20,
            width: 60,
          ),
        ),
        SizedBox(width: 30),
        InkWell(
          onTap: () => _scaffoldKey.currentState?.openEndDrawer(),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.pink,
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.pink,
                      offset: const Offset(5.0, 5.0),
                      blurRadius: 10,
                      spreadRadius: 2.0)
                ]),
            child: Text(
              'Drawer2',
              style: TextStyle(color: Colors.white, fontSize: 12),
              textAlign: TextAlign.center,
            ),
            height: 20,
            width: 60,
          ),
        ),
      ]),
    );
  }
}
