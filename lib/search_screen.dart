import 'package:flutter/material.dart';

import 'Utils/app_images.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
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
              ),
              ),
            ],
          ),
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
            label: 'Bills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_rounded),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFF8E04CE),
        unselectedLabelStyle: TextStyle(
          color: Colors.red
        ),
        onTap: (index){
          print(index);
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
