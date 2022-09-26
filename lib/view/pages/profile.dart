import 'package:flutter/material.dart';
import 'package:listed_app/utils/styles.dart';
import 'package:listed_app/view/widgets/list_item.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Color> gradient = [
      Colors.transparent,
      Colors.transparent,
      backgroundWhite,
      backgroundWhite
    ];
    const double fillPercent = 75;
    const double fillStop = (100 - fillPercent) / 100;
    final List<double> stops = [0.0, fillStop, fillStop, 1.0];

    return Scaffold(
      backgroundColor: backgroundWhite,
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/homer.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment(-1, -0.5),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 12, left: 24, right: 24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: gradient,
                  stops: stops,
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter),
            ),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: Icon(
                        Icons.menu,
                        color: Colors.black87,
                        size: 33,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: ImageIcon(
                        AssetImage("assets/top-notification.png"),
                        //  Icons.notifications_active_outlined,
                        color: deepOrange,
                        size: 33,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 90),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 328,
                    height: 118,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.05),
                          offset: Offset(0.0, 1.0),
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40.0,
                          backgroundImage: AssetImage('assets/avatar.png'),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Abiola Ogunjobi",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  ImageIcon(
                                    AssetImage("assets/verified.png"),
                                    color: deepOrange,
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Verified",
                                style: TextStyle(
                                  color: lightGray,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ListItem(text: "Security", icon: "assets/security-safe.png"),
                ListItem(text: "Cards", icon: "assets/card.png"),
                ListItem(
                    text: "Notifications", icon: "assets/notification.png"),
                ListItem(text: "Live Support", icon: "assets/card.png"),
                ListItem(text: "About Us", icon: "assets/card.png"),
                ListItem(text: "Contact Us", icon: "assets/card.png"),
                ListItem(text: "Terms and Conditions", icon: "assets/card.png"),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
