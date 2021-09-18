import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/Utils/app_images.dart';

import 'dashboard_list_cardview.dart';
import 'dart:math' as math;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  final List<String> categories = ['Upcoming', 'Paid', 'Overdue', 'Recurring'];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF8EAFF),
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 30, left: 30, bottom: 5, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Text(
                      "Hi, Segun",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      print('this');
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "This month",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image(
                            height: 12,
                            width: 12,
                            image: AppImages.ic_down,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Color(0xFF8E04CE))
                        // color: Color(0xFF8E04CE),
                        ),
                    // child: Image(
                    //   height: 20,
                    //   width: 20,
                    //   // image: AppImages.up_white,
                    // ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Transform.rotate(
                    angle: 9.47,
                    child: Container(
                      height: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xFFdb9ee8),
                      ),
                    ),
                  ),

                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xFF8E04CE),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 30, left: 20, bottom: 10, right: 20),
                              child: Text(
                                "Total Recurring Bills",
                                style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "\$200,00.00",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      "All Bills",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      print('this');
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "See all",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image(
                            height: 12,
                            width: 12,
                            image: AppImages.arrow_white,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 45.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 10.0,
                        ),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                              color: index == selectedIndex
                                  ? Color(0xFF8E04CE)
                                  : Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Divider(
                height: 2,
                color: Color(0xFF8E04CE),
              ),
              Expanded(
                child: ListView(
                  children: [
                    DashboardListCardView(),
                    DashboardListCardView(),
                    DashboardListCardView(),
                    DashboardListCardView(),
                    DashboardListCardView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
