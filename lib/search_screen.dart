import 'package:flutter/material.dart';

import 'Utils/app_images.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 30, bottom: 5, right: 30),
        child: Column(
          children: [
            Row(children: [
              Image(
                height: 30,
                width: 30,
                image: AppImages.search_icon,
              ),
              SizedBox(
                height: 26,
                width: 15,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    isDense: true,
                    contentPadding: EdgeInsets.only(bottom: 5),
                  ),
                ),
              ),
              SizedBox(
                height: 26,
                width: 15,
              ),
              Image(
                height: 30,
                width: 30,
                image: AppImages.close_icon,
              ),
            ]),
            Expanded(
                child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 26,
                    width: 15,
                  ),
                  Text(
                    "What would you like \nto do?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  SizedBox(
                    height: 25,
                    width: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xFF8E04CE),
                          ),
                          height: 120,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                left: 15,
                                child: Text(
                                  "Add \nNew Bill",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                top: 55,
                                left: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: 65,
                                    width: 65,
                                    image: AppImages.search_background,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 26,
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xFF8E04CE),
                          ),
                          height: 120,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                left: 15,
                                child: Text(
                                  "Add New \nCategory",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                top: 55,
                                left: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: 65,
                                    width: 65,
                                    image: AppImages.search_background,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 26,
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xFF8E04CE),
                          ),
                          height: 120,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                left: 15,
                                child: Text(
                                  "View \nBills",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                top: 55,
                                left: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: 65,
                                    width: 65,
                                    image: AppImages.search_background,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                    width: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xFF8E04CE),
                          ),
                          height: 120,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                left: 15,
                                child: Text(
                                  "View \nCategories",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                top: 55,
                                left: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: 65,
                                    width: 65,
                                    image: AppImages.search_background,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 26,
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xFF8E04CE),
                          ),
                          height: 120,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                left: 15,
                                child: Text(
                                  "Calendar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                top: 55,
                                left: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: 65,
                                    width: 65,
                                    image: AppImages.search_background,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 26,
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xFF8E04CE),
                          ),
                          height: 120,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                left: 15,
                                child: Text(
                                  "Reports",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                top: 55,
                                left: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: 65,
                                    width: 65,
                                    image: AppImages.search_background,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                    width: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xFF8E04CE),
                          ),
                          height: 120,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                left: 15,
                                child: Text(
                                  "Read FAQ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                top: 55,
                                left: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: 65,
                                    width: 65,
                                    image: AppImages.search_background,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xFF8E04CE),
                          ),
                          height: 120,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                left: 15,
                                child: Text(
                                  "Share a \nSuggestion",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                top: 55,
                                left: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: 65,
                                    width: 65,
                                    image: AppImages.search_background,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xFF8E04CE),
                          ),
                          height: 120,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                left: 15,
                                child: Text(
                                  "Settings",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                top: 55,
                                left: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: 65,
                                    width: 65,
                                    image: AppImages.search_background,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
            Container(
                child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        size: 35,
                        color: Colors.blue,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_balance_sharp,
                        size: 35,
                        color: Colors.blue,
                      ),
                      Text(
                        "Bills",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: Color(0xFF8E04CE)),
                    ),
                    child: Icon(
                      Icons.apps_rounded,
                      size: 35,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.auto_graph, size: 35, color: Colors.blue),
                      Text(
                        "Reports",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.blue,
                        size: 35,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        onTap: null,
      ),
    );
  }
}
