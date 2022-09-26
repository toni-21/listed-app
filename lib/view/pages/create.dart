import 'package:listed_app/view/widgets/percentage_chip.dart';
import 'package:flutter/material.dart';
import 'package:listed_app/utils/styles.dart';
import 'package:listed_app/view/widgets/savings_item.dart';

enum Percentage {
  ten,
  twenty,
  thirty,
  forty,
  fifty,
  sixty,
  seventy,
  eighty,
  ninety,
  hundred
}

class CreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreatePageState();
  }
}

class _CreatePageState extends State<CreatePage> {
  bool selectedChip = false;
  Percentage _percentage = Percentage.thirty;
  void _showSheet(context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true, // set this to true
      builder: (_) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter mystate) {
          return DraggableScrollableSheet(
            // minChildSize: 0.3,
            initialChildSize: 0.54,
            expand: false,
            builder: (_, controller) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.8),
                        offset: Offset(3, 2),
                        blurRadius: 7)
                  ],
                ),
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(
                    controller: controller,
                    physics: ClampingScrollPhysics(),
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 15,
                            ),
                            SizedBox(
                              width: 50,
                              child: Divider(
                                thickness: 3,
                                color: Color.fromRGBO(38, 38, 38, 0.25),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            bottom: 24, left: 24, right: 24, top: 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Awesome",
                              style: TextStyle(
                                color: darkerBlue,
                                fontSize: 28,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              "What percentage of your income would you like to save?",
                              style: TextStyle(
                                color: darkerBlue,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Wrap(
                                    spacing: 16.0,
                                    runSpacing: 16.0,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          mystate(() {
                                            _percentage = Percentage.sixty;
                                          });
                                        },
                                        child: PercentageChip(
                                          text: "60%",
                                          selected:
                                              _percentage == Percentage.sixty,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          mystate(() {
                                            _percentage = Percentage.seventy;
                                          });
                                        },
                                        child: PercentageChip(
                                          text: "70%",
                                          selected:
                                              _percentage == Percentage.seventy,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          mystate(() {
                                            _percentage = Percentage.eighty;
                                          });
                                        },
                                        child: PercentageChip(
                                          text: "80%",
                                          selected:
                                              _percentage == Percentage.eighty,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          mystate(() {
                                            _percentage = Percentage.ninety;
                                          });
                                        },
                                        child: PercentageChip(
                                          text: "90%",
                                          selected:
                                              _percentage == Percentage.ninety,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          mystate(() {
                                            _percentage = Percentage.hundred;
                                          });
                                        },
                                        child: PercentageChip(
                                          text: "100%",
                                          selected:
                                              _percentage == Percentage.hundred,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          mystate(() {
                                            _percentage = Percentage.ten;
                                          });
                                        },
                                        child: PercentageChip(
                                          text: "10%",
                                          selected:
                                              _percentage == Percentage.ten,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          mystate(() {
                                            _percentage = Percentage.twenty;
                                          });
                                        },
                                        child: PercentageChip(
                                          text: "20%",
                                          selected:
                                              _percentage == Percentage.twenty,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          mystate(() {
                                            _percentage = Percentage.thirty;
                                          });
                                        },
                                        child: PercentageChip(
                                          text: "30%",
                                          selected:
                                              _percentage == Percentage.thirty,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          mystate(() {
                                            _percentage = Percentage.forty;
                                          });
                                        },
                                        child: PercentageChip(
                                          text: "40%",
                                          selected:
                                              _percentage == Percentage.forty,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          mystate(() {
                                            _percentage = Percentage.fifty;
                                          });
                                        },
                                        child: PercentageChip(
                                          text: "50%",
                                          selected:
                                              _percentage == Percentage.fifty,
                                        ),
                                      ),
                                    ])
                              ],
                            ),
                            SizedBox(height: 16),
                            SizedBox(
                              child: TextField(
                                //  enabled: false,
                                decoration: InputDecoration(
                                    labelText: "Enter Manually",
                                    filled: true,
                                    fillColor: disabled,
                                    labelStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    contentPadding: EdgeInsets.only(
                                        left: 118,
                                        right: 118,
                                        top: 8,
                                        bottom: 8)),
                              ),
                            ),
                            SizedBox(height: 16),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Create Save",
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: deepOrange,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          flexibleSpace: Image(
            image: AssetImage('assets/header.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text(
            "Create Rhapsave",
            style: TextStyle(
              color: darkerBlue,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 328,
                height: 148,
                margin: EdgeInsets.only(top: 48, left: 24, right: 24),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.06),
                      offset: Offset(0.0, 1.0),
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rhapsave Savings",
                                style: TextStyle(
                                  color: darkBlue,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "N 1,000,000",
                                style: TextStyle(
                                  color: darkerBlue,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Save automatically towards a several goals.",
                                style: TextStyle(
                                  color: darkerBlue,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/doghnut.png"),
                                  fit: BoxFit.contain),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SavingsItem(text: "Car Savings", color: yellow),
                          SavingsItem(text: "Mortgage Savings", color: lilac),
                          SavingsItem(text: "School Fees", color: red),
                          SavingsItem(text: "Christmas Savings", color: yellow),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SavingsItem(text: "Car Savings", color: yellow),
                          SizedBox(width: 4),
                          SavingsItem(text: "Mortgage Savings", color: lilac),
                          SizedBox(width: 4),
                          SavingsItem(text: "School Fees", color: red),
                        ],
                      ),
                    ]),
              ),
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: deepOrange,
          onPressed: () {
            _showSheet(context);
          },
          child: ImageIcon(
            AssetImage("assets/pen.png"),
            color: white,
          ),
        ));
  }
}
