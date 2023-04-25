import 'package:flutter/material.dart';
import 'package:insighttrack/pages/login_screen.dart';
import 'package:insighttrack/utils/color_constant.dart';
import 'package:insighttrack/utils/image_constant.dart';
import 'package:insighttrack/utils/size_utils.dart';

import 'custom_appbar.dart';
List<Widget> screens= [
  Container(color: Colors.blue,),
  Container(color: Colors.red,),
  Container(color: Colors.green,),
  Container(color: Colors.black,),
  Container(color: Colors.yellow),
  LoginScreen(),
];
class HomePage extends StatelessWidget {

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.bgLight,
        iconTheme: IconThemeData(color: ColorConstant.primaryLight),
        title: Image.asset(ImageConstant.imgLogo2,fit: BoxFit.fitHeight,height: getVerticalSize(65),width: double.infinity,alignment: Alignment.centerLeft,),
      ),
      endDrawer: CustomDrawer(),
    );
  }
}
 Widget CustomDrawer(){
  List<String> categories = [
    'Home',
    'Your Analysis',
    'Department Analysis',
    'Your Profile',
    'Terms & Conditions',
    'Logout'
  ];

  return Drawer(
    backgroundColor: Colors.blue,
    elevation: 20,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorConstant.secondary,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Stack(
                children: [
                  Container(
                      height: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.black12.withOpacity(.8),
                                  BlendMode.darken),
                              fit: BoxFit.cover,
                              image: AssetImage('images/profile_pic.png')),
                          /*color: Colors.purple.shade900,*/
                          boxShadow: const [BoxShadow(blurRadius: 15)],
                          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(150))),
                      padding: getPadding(all: 10),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 50),
                            child: Text(
                              'Jatin Thakkar',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Text(
                            'jatinthakkar1590@gmail.com',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Colors.white, fontSize: 9),
                          )
                        ],
                      )
                  ),
                  Positioned(
                    bottom: 0,
                    left: 50,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/profile_pic.png')),
                            color: ColorConstant.secondary,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(blurRadius: 7, offset: Offset(0, 3))
                            ],
                          )),
                    ),
                  )
                ]
            ),
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(top: 30),
              shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                screens[index]==LoginScreen()?
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen())):
                Navigator.push(context, MaterialPageRoute(builder: (context)=>screens[index]));
                return GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: ColorConstant.primary,
                        boxShadow: const [BoxShadow(blurRadius: 4)]),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    alignment: Alignment.center,
                    child: Text(
                      categories[index],
                      style: TextStyle(
                          fontSize: 12.5,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                );
              })
        ],
      ),
    ),
  );
}
