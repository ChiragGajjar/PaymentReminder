import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/Utils/app_images.dart';
import 'package:payment_app/Utils/trensations_widgets.dart';

class WelcomePage1 extends StatefulWidget {
  @override
  WelcomePage1State createState() => WelcomePage1State();
}

class WelcomePage1State extends State<WelcomePage1> with SingleTickerProviderStateMixin{
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: [
              Container(
                child: Container(
                  child: Image(
                    image: AppImages.Onboarding,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text(
                    'skip',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 380,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Color(0xFFF2D8FF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      getTitle(),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 20),
                            width: MediaQuery.of(context).size.width - 40,
                            child: Text(
                              getDetails(),
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              getStepper(),
                              Spacer(),
                              Container(
                                height: 50,
                                // width: 150,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentIndex = currentIndex + 1;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.orange,
                                    ),
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          getButtonTitle(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Image(
                                          image: AppImages.arrow_white,
                                          width: 24.0,
                                          height: 24.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container getTitle() {
    var strTitle = '';
    if (currentIndex == 0) {
      strTitle = 'Welcome \nto Go-Bills!';
    } else if (currentIndex == 1) {
      strTitle = 'Stay alerted \non your bills';
    } else {
      strTitle = 'Get powerful \nreports';
    }
    return Container(
      margin: EdgeInsets.only(left: 30, top: 50),
      child: ShakeTransition(
        duration: Duration(milliseconds: 900),
        axis: Axis.horizontal,
        child: Text(
          strTitle,
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  String getButtonTitle() {
    if (currentIndex == 0) {
      return 'Next';
    } else if (currentIndex == 1) {
      return 'Next';
    } else {
      return 'Get Started';
    }
  }

  String getDetails() {
    if (currentIndex == 0) {
      return 'Take control of your bils \nby traking them easily.';
    } else if (currentIndex == 1) {
      return 'Create a personalised \nreminder to avoid paying late fee.';
    } else {
      return 'Know exactly the bills \nyou are paying';
    }
  }

  Row getStepper() {
    if (currentIndex == 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          StepperBar(active: true),
          StepperBar(),
          StepperBar(),
        ],
      );
    } else if (currentIndex == 1) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          StepperBar(),
          StepperBar(active: true),
          StepperBar(),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          StepperBar(),
          StepperBar(),
          StepperBar(active: true),
        ],
      );
    }
  }
}

class StepperBar extends StatelessWidget {
  final bool active;
  final bool completed;

  const StepperBar({this.active: false, this.completed: false});

  @override
  Widget build(BuildContext context) {
    final _completedClr = Color(0xFF8D04CE);
    final _activeClr = Color(0xFF8D04CE);
    final _pendingClr = Color(0xFF919191);
    return Container(
      margin: EdgeInsets.only(left: 2),
      width: 15,
      height: active ? 10 : 6,
      decoration: BoxDecoration(
        color: active
            ? _activeClr
            : completed
                ? _completedClr
                : _pendingClr,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
