import 'package:flutter/material.dart';
import 'package:insighttrack/pages/card_kpi.dart';
import 'package:insighttrack/utils/color_constant.dart';
import 'package:insighttrack/utils/image_constant.dart';
import 'package:insighttrack/utils/size_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:flutter_animated_icons/lottiefiles.dart';
import 'package:flutter_animated_icons/useanimations.dart';
import 'package:lottie/lottie.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> with TickerProviderStateMixin{
  late AnimationController _bookController;
  late AnimationController _bookController1;
  late AnimationController _bookController2;
  late AnimationController _bookController3;
  late AnimationController _bookController4;
  late AnimationController _bookController5;
  late AnimationController _bookController6;
  late AnimationController _bookController7;
  late AnimationController _bookController8;
  late AnimationController _bookController9;
  late AnimationController _icon2;
  late AnimationController _paper;
  late AnimationController _guestlecture;
  late AnimationController _clock;
  @override
  void initState() {
    _bookController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _bookController1 = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _bookController2 = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _bookController3 = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _bookController4 = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _bookController5 = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _bookController6 = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _bookController7 = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _bookController8 = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _bookController9 = AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _icon2 =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstant.imgBackground),
            fit:BoxFit.cover
          )
        ),
        child: Padding(
          padding: getPadding(all: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Department Analysis",style: GoogleFonts.ooohBaby(fontWeight: FontWeight.bold,fontSize: 77),),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlipCard(
                      front: Container(
                        height: 70,
                        width: 270,
                        decoration: BoxDecoration(
                            color: ColorConstant.bgDark,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MouseRegion(
                              onEnter: (event) {
                                _bookController.repeat();
                              },
                              onExit: (event) {
                                _bookController.stop();
                              },
                              child: IconButton(
                                splashRadius: 50,
                                iconSize: 100,
                                onPressed: () {
                                  if (_bookController.status ==
                                      AnimationStatus.dismissed) {
                                    _bookController.reset();
                                    _bookController.animateTo(1);
                                  } else {
                                    _bookController.reverse();
                                  }
                                },
                                icon: Lottie.asset(Icons8.book,
                                    controller: _bookController,
                                    height: 60,
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                            Text("Papers Published",textAlign: TextAlign.start,)
                          ],
                        )
                      ),
                      back: Container(
                        height: 70,
                        width: 270,
                        decoration: BoxDecoration(
                            color: ColorConstant.bgDark,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Journal Papers Published : ",style:TextStyle(fontSize: 15) ,),
                                Text("30",style: TextStyle(fontSize: 15),)
                              ],
                            ),
                            Chip(label: Text("In Progress"),backgroundColor: Colors.yellow,)
                          ],
                        ),
                      )
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlipCard(
                      front: Container(
                          height: 70,
                          width: 270,
                          decoration: BoxDecoration(
                              color: ColorConstant.bgDark,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Colors.black
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MouseRegion(
                                onEnter: (event) {
                                  _bookController1.repeat();
                                },
                                onExit: (event) {
                                  _bookController1.stop();
                                },
                                child: IconButton(
                                  splashRadius: 50,
                                  iconSize: 100,
                                  onPressed: () {
                                    if (_bookController1.status ==
                                        AnimationStatus.dismissed) {
                                      _bookController1.reset();
                                      _bookController1.animateTo(1);
                                    } else {
                                      _bookController1.reverse();
                                    }
                                  },
                                  icon: Lottie.asset(Icons8.activity,
                                      controller: _bookController1,
                                      height: 60,
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                              Text("Papers Published",textAlign: TextAlign.start,)
                            ],
                          )
                      ),
                      back: Container(
                        height: 70,
                        width: 270,
                        decoration: BoxDecoration(
                            color: ColorConstant.bgDark,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Journal Papers Published : ",style:TextStyle(fontSize: 15) ,),
                                Text("30",style: TextStyle(fontSize: 15),)
                              ],
                            ),
                            Chip(label: Text("In Progress"),backgroundColor: Colors.yellow,)
                          ],
                        ),
                      )
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlipCard(
                      front: Container(
                          height: 70,
                          width: 270,
                          decoration: BoxDecoration(
                              color: ColorConstant.bgDark,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Colors.black
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MouseRegion(
                                onEnter: (event) {
                                  _bookController3.repeat();
                                },
                                onExit: (event) {
                                  _bookController3.stop();
                                },
                                child: IconButton(
                                  splashRadius: 50,
                                  iconSize: 100,
                                  onPressed: () {
                                    if (_bookController3.status ==
                                        AnimationStatus.dismissed) {
                                      _bookController3.reset();
                                      _bookController3.animateTo(1);
                                    } else {
                                      _bookController3.reverse();
                                    }
                                  },
                                  icon: Lottie.asset(Icons8.bar_chart,
                                      controller: _bookController3,
                                      height: 60,
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                              Text("Papers Published",textAlign: TextAlign.start,)
                            ],
                          )
                      ),
                      back: Container(
                        height: 70,
                        width: 270,
                        decoration: BoxDecoration(
                            color: ColorConstant.bgDark,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Journal Papers Published : ",style:TextStyle(fontSize: 15) ,),
                                Text("30",style: TextStyle(fontSize: 15),)
                              ],
                            ),
                            Chip(label: Text("In Progress"),backgroundColor: Colors.yellow,)
                          ],
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlipCard(
                      front: Container(
                          height: 70,
                          width: 270,
                          decoration: BoxDecoration(
                              color: ColorConstant.bgDark,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Colors.black
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MouseRegion(
                                onEnter: (event) {
                                  _bookController4.repeat();
                                },
                                onExit: (event) {
                                  _bookController4.stop();
                                },
                                child: IconButton(
                                  splashRadius: 50,
                                  iconSize: 100,
                                  onPressed: () {
                                    if (_bookController4.status ==
                                        AnimationStatus.dismissed) {
                                      _bookController4.reset();
                                      _bookController4.animateTo(1);
                                    } else {
                                      _bookController4.reverse();
                                    }
                                  },
                                  icon: Lottie.asset(Icons8.bookmark,
                                      controller: _bookController4,
                                      height: 60,
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                              Text("Papers Published",textAlign: TextAlign.start,)
                            ],
                          )
                      ),
                      back: Container(
                        height: 70,
                        width: 270,
                        decoration: BoxDecoration(
                            color: ColorConstant.bgDark,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Journal Papers Published : ",style:TextStyle(fontSize: 15) ,),
                                Text("30",style: TextStyle(fontSize: 15),)
                              ],
                            ),
                            Chip(label: Text("In Progress"),backgroundColor: Colors.yellow,)
                          ],
                        ),
                      )
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlipCard(
                      front: Container(
                          height: 70,
                          width: 270,
                          decoration: BoxDecoration(
                              color: ColorConstant.bgDark,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Colors.black
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MouseRegion(
                                onEnter: (event) {
                                  _bookController5.repeat();
                                },
                                onExit: (event) {
                                  _bookController5.stop();
                                },
                                child: IconButton(
                                  splashRadius: 50,
                                  iconSize: 100,
                                  onPressed: () {
                                    if (_bookController5.status ==
                                        AnimationStatus.dismissed) {
                                      _bookController5.reset();
                                      _bookController5.animateTo(1);
                                    } else {
                                      _bookController5.reverse();
                                    }
                                  },
                                  icon: Lottie.asset(Icons8.calculator,
                                      controller: _bookController5,
                                      height: 60,
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                              Text("Papers Published",textAlign: TextAlign.start,)
                            ],
                          )
                      ),
                      back: Container(
                        height: 70,
                        width: 270,
                        decoration: BoxDecoration(
                            color: ColorConstant.bgDark,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Journal Papers Published : ",style:TextStyle(fontSize: 15) ,),
                                Text("30",style: TextStyle(fontSize: 15),)
                              ],
                            ),
                            Chip(label: Text("In Progress"),backgroundColor: Colors.yellow,)
                          ],
                        ),
                      )
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlipCard(
                      front: Container(
                          height: 70,
                          width: 270,
                          decoration: BoxDecoration(
                              color: ColorConstant.bgDark,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Colors.black
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MouseRegion(
                                onEnter: (event) {
                                  _bookController6.repeat();
                                },
                                onExit: (event) {
                                  _bookController6.stop();
                                },
                                child: IconButton(
                                  splashRadius: 50,
                                  iconSize: 100,
                                  onPressed: () {
                                    if (_bookController6.status ==
                                        AnimationStatus.dismissed) {
                                      _bookController6.animateTo(1);
                                    } else {
                                      _bookController6.reverse();
                                    }
                                  },
                                  icon: Lottie.asset(Icons8.checklist,
                                      controller: _bookController6,
                                      height: 60,
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                              Text("Papers Published",textAlign: TextAlign.start,)
                            ],
                          )
                      ),
                      back: Container(
                        height: 70,
                        width: 270,
                        decoration: BoxDecoration(
                            color: ColorConstant.bgDark,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Journal Papers Published : ",style:TextStyle(fontSize: 15) ,),
                                Text("30",style: TextStyle(fontSize: 15),)
                              ],
                            ),
                            Chip(label: Text("In Progress"),backgroundColor: Colors.yellow,)
                          ],
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlipCard(
                      front: Container(
                          height: 70,
                          width: 270,
                          decoration: BoxDecoration(
                              color: ColorConstant.bgDark,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Colors.black
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MouseRegion(
                                onEnter: (event) {
                                  _bookController7.repeat();
                                },
                                onExit: (event) {
                                  _bookController7.stop();
                                },
                                child: IconButton(
                                  splashRadius: 50,
                                  iconSize: 100,
                                  onPressed: () {
                                    if (_bookController7.status ==
                                        AnimationStatus.dismissed) {
                                      _bookController7.reset();
                                      _bookController7.animateTo(1);
                                    } else {
                                      _bookController7.reverse();
                                    }
                                  },
                                  icon: Lottie.asset(Icons8.file,
                                      controller: _bookController7,
                                      height: 60,
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                              Text("Papers Published",textAlign: TextAlign.start,)
                            ],
                          )
                      ),
                      back: Container(
                        height: 70,
                        width: 270,
                        decoration: BoxDecoration(
                            color: ColorConstant.bgDark,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Journal Papers Published : ",style:TextStyle(fontSize: 15) ,),
                                Text("30",style: TextStyle(fontSize: 15),)
                              ],
                            ),
                            Chip(label: Text("In Progress"),backgroundColor: Colors.yellow,)
                          ],
                        ),
                      )
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlipCard(
                      front: Container(
                          height: 70,
                          width: 270,
                          decoration: BoxDecoration(
                              color: ColorConstant.bgDark,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Colors.black
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MouseRegion(
                                onEnter: (event) {
                                  _bookController9.repeat();
                                },
                                onExit: (event) {
                                  _bookController9.stop();
                                },
                                child: IconButton(
                                  splashRadius: 50,
                                  iconSize: 100,
                                  onPressed: () {
                                    if (_bookController9.status ==
                                        AnimationStatus.dismissed) {
                                      _bookController9.reset();
                                      _bookController9.animateTo(1);
                                    } else {
                                      _bookController9.reverse();
                                    }
                                  },
                                  icon: Lottie.asset(Icons8.key_password,
                                      controller: _bookController9,
                                      height: 60,
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                              Text("Papers Published",textAlign: TextAlign.start,)
                            ],
                          )
                      ),
                      back: Container(
                        height: 70,
                        width: 270,
                        decoration: BoxDecoration(
                            color: ColorConstant.bgDark,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Journal Papers Published : ",style:TextStyle(fontSize: 15) ,),
                                Text("30",style: TextStyle(fontSize: 15),)
                              ],
                            ),
                            Chip(label: Text("In Progress"),backgroundColor: Colors.yellow,)
                          ],
                        ),
                      )
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlipCard(
                      front: Container(
                          height: 70,
                          width: 270,
                          decoration: BoxDecoration(
                              color: ColorConstant.bgDark,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Colors.black
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MouseRegion(
                                onEnter: (event) {
                                  _bookController8.repeat();
                                },
                                onExit: (event) {
                                  _bookController8.stop();
                                },
                                child: IconButton(
                                  splashRadius: 50,
                                  iconSize: 100,
                                  onPressed: () {
                                    if (_bookController8.status ==
                                        AnimationStatus.dismissed) {
                                      _bookController8.reset();
                                      _bookController8.animateTo(1);
                                    } else {
                                      _bookController8.reverse();
                                    }
                                  },
                                  icon: Lottie.asset(Icons8.medal_first_place,
                                      controller: _bookController8,
                                      height: 60,
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                              Text("Papers Published",textAlign: TextAlign.start,)
                            ],
                          )
                      ),
                      back: Container(
                        height: 70,
                        width: 270,
                        decoration: BoxDecoration(
                            color: ColorConstant.bgDark,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Journal Papers Published : ",style:TextStyle(fontSize: 15) ,),
                                Text("30",style: TextStyle(fontSize: 15),)
                              ],
                            ),
                            Chip(label: Text("In Progress"),backgroundColor: Colors.yellow,)
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
