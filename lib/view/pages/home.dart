import 'package:listed_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listed_app/view/pages/create.dart';
import 'package:listed_app/view/pages/profile.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<StatefulWidget> {
  int selectedIndex = 3;

  List<Widget> pages = <Widget>[
    Profile(),
    Profile(),
    CreatePage(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: IndexedStack(index: selectedIndex, children: pages),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              offset: Offset(0.0, 1.0),
              blurRadius: 2.0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              selectedItemColor: deepOrange,
              unselectedItemColor: unselectedColor,
              type: BottomNavigationBarType.shifting,
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/house.png")),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/refund-wallet.png")),
                  label: 'Transactions',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/empty-wallet.png")),
                  label: 'Balance',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/profile.png")),
                  label: 'Profile',
                ),
              ]),
        ),
      ),
    );
  }
}
