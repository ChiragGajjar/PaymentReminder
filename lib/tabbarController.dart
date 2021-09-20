import 'package:flutter/material.dart';
import 'package:payment_app/Dashboard/dashboard.dart';
import 'package:payment_app/search_screen.dart';

import 'Utils/animated_bottom_navigation_bar.dart';
import 'Utils/app_images.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  TabBarScreenState createState() => TabBarScreenState();
}

class TabBarScreenState extends State<TabBarScreen> with TickerProviderStateMixin{
  int selectedIndex = 0;
  // late Animation<double> animation;
  // late CurvedAnimation curve;
  // late AnimationController _animationController;

  final iconList = <IconData>[
    Icons.home,
    Icons.business,
    Icons.brightness_6,
    Icons.supervised_user_circle_rounded,
  ];
  final nameList = <String>[
    'Home',
    'Bills',
    'Reports',
    'Profile',
  ];

  @override
  void initState() {
    // TODO: implement initState
    // _animationController = AnimationController(
    //   duration: Duration(seconds: 1),
    //   vsync: this,
    // );
    // curve = CurvedAnimation(
    //   parent: _animationController,
    //   curve: Interval(
    //     0.5,
    //     1.0,
    //     curve: Curves.fastOutSlowIn,
    //   ),
    // );
    //
    // animation = Tween<double>(
    //   begin: 0,
    //   end: 1,
    // ).animate(curve);
    // Future.delayed(
    //   Duration(seconds: 1),
    //       () => _animationController.forward(),
    // );

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _getBody(selectedIndex),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
            selectedIndex = 4;
          });
        },
        shape: StadiumBorder(side: BorderSide(color: Color(0xFF8E04CE), width: 1)),
        backgroundColor: selectedIndex == 4 ? Color(0xFF8E04CE) : Color(0xFFF8EAFF),
        child: Image(
          image: AppImages.home,
          height: 25,
          width: 25,
          color: selectedIndex == 4 ? Color(0xFFF8EAFF) : Color(0xFF8E04CE),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.grey : Color(0xFF8E04CE);
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconList[index],
                size: 24,
                color: color,
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  nameList[index],
                  maxLines: 1,
                  style: TextStyle(color: color),
                  // group: autoSizeGroup,
                ),
              )
            ],
          );
        },
        backgroundColor: Color(0xFFF8EAFF),
        activeIndex: selectedIndex,
        splashColor: HexColor('#FFA400'),
        // notchAndCornersAnimation: animation,
        // splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,
        // leftCornerRadius: 32,
        // rightCornerRadius: 32,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
          print(selectedIndex);
        },
      ),

    );
  }
  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return SearchScreen(); // Create this function, it should return your first page as a widget
      case 1:
        return Dashboard(); // Create this function, it should return your second page as a widget
      case 2:
        return Dashboard(); // Create this function, it should return your third page as a widget
      case 3:
        return Dashboard(); // Create this function, it should return your fourth page as a widget
    }

    return Dashboard();
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
