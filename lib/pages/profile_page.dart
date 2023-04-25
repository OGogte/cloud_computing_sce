import 'package:flutter/material.dart';
import 'package:insighttrack/utils/image_constant.dart';
import 'package:insighttrack/utils/size_utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
          child: Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Padding(
                    padding: getPadding(left:20),
                    child: const SizedBox(
                      width: 336.97,
                      height: 50,
                      child: Text(
                        "My Profile",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff315034),
                          fontSize: 40,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.60,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 31),
                  SizedBox(
                    width: 243,
                    height: 135,
                    child: Stack(
                      children:[
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: getPadding(left:120),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(ImageConstant.imgProfilePic),
                                  ),
                                  // child: Image.asset(ImageConstant.imgProfilePic),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 200,
                          top: 100  ,
                          child: SizedBox(
                            width: 40.50,
                            height: 37.42,
                            child: Stack(
                              children:[const SizedBox(
                                width: 40.50,
                                height: 37.42,
                                child: Material(
                                  color: Color(0xffd4ead1),
                                  shape: CircleBorder(),
                                ),
                              ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 37.50,
                                      height: 34.65,
                                      child: const FlutterLogo(size: 34.64754867553711),
                                    ),
                                  ),
                                ),],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 31),
                  Container(
                    width: 384.73,
                    height: 130.10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        SizedBox(
                          width: 326.36,
                          height: 60,
                          child: Text(
                            "Aman Kapoor",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff3a5e3d),
                              fontSize: 30,
                              fontFamily: "Barlow Semi Condensed",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.55,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 384.71,
                          height: 65.96,
                          child: Text(
                            "Assistant Proffesor",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff3a5e3d),
                              fontSize: 30,
                              letterSpacing: 0.48,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 31),
                  Container(
                    width: 332,
                    height: 272,
                    child: Stack(
                      children:[
                        const Positioned(
                          left: -0,
                          top: 28.06,
                          child: SizedBox(
                            width: 248.81,
                            height: 60.95,
                            child: Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "Password",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xff315034),
                                  fontSize: 30,
                                  fontFamily: "Barlow Semi Condensed",
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.48,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: -0,
                          top: 89.11,
                          child: SizedBox(
                            width: 320.70,
                            child: Text(
                              "Contact",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff446e48),
                                fontSize: 30,
                                fontFamily: "Barlow Semi Condensed",
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.48,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          top: 150.09,
                          child: SizedBox(
                            width: 151.11,
                            height: 60.95,
                            child: Text(
                              "About",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff446e48),
                                fontSize: 30,
                                fontFamily: "Barlow Semi Condensed",
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.48,
                              ),
                            ),
                          ),
                        ),
                        const Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: SizedBox(
                              width: 187.11,
                              height: 60.95,
                              child: Text(
                                "LOGOUT",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xff446e48),
                                  fontSize: 30,
                                  fontFamily: "Barlow Semi Condensed",
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.48,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 190,
                          top: 30,
                          child: SizedBox(
                            width: 25.50,
                            height: 33,
                            child: Material(
                              color: Color(0x7f7f3a44),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 5, color: Color(0xff315034), ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          Container(
            width: 660,
            height: 794,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                SizedBox(
                  width: 660,
                  height: 794,
                  child: Material(
                    color: Color(0xffd4ead1),
                    borderRadius: BorderRadius.circular(24),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 42, right: 75, top: 304, bottom: 132, ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:[
                          Container(
                            width: 543,
                            height: 600,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                SizedBox(
                                  width: 543,
                                  height: 500,
                                  child: Material(
                                    color: Color(0xffb3d6ae),
                                    borderRadius: BorderRadius.circular(24),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 14, right: 54, top: 14, bottom: 21, ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          SizedBox(
                                            width: 297.41,
                                            height: 37.93,
                                            child: Text(
                                              "Change Password",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xff315034),
                                                fontSize: 35,
                                                fontFamily: "Barlow Semi Condensed",
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.40,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15.33),
                                          Container(
                                            width: 463,
                                            height: 107,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                SizedBox(
                                                  width: 142.99,
                                                  height: 25.99,
                                                  child: Text(
                                                    "Old Password",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xff315034),
                                                      fontSize: 15,
                                                      fontFamily: "Barlow Semi Condensed",
                                                      fontWeight: FontWeight.w500,
                                                      letterSpacing: 0.24,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 1.48),
                                                SizedBox(
                                                  width: 462,
                                                  child: Material(
                                                    color: Color(0xffa3e8aa),
                                                    borderRadius: BorderRadius.circular(4),
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12, ),
                                                      child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize: MainAxisSize.max,
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children:[
                                                                Container(
                                                                  width: 16,
                                                                  height: 16,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                  ),
                                                                  child: FlutterLogo(size: 16),
                                                                ),
                                                                SizedBox(width: 8),
                                                                Text(
                                                                  "Enter password",
                                                                  style: TextStyle(
                                                                    color: Color(0xff6f8e6a),
                                                                    fontSize: 20,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(width: 12),
                                                          Container(
                                                            width: 20,
                                                            height: 20,
                                                            child: Stack(
                                                              children:[
                                                                Positioned.fill(
                                                                  child: Align(
                                                                    alignment: Alignment.center,
                                                                    child: Container(
                                                                      width: 16,
                                                                      height: 11,
                                                                      child: Row(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                        children:[
                                                                          SizedBox(
                                                                            width: 16,
                                                                            height: 11,
                                                                            child: Material(
                                                                              color: Color(0x7f7f3a44),
                                                                              shape: RoundedRectangleBorder(
                                                                                side: BorderSide(width: 1, color: Colors.black, ),
                                                                                borderRadius: BorderRadius.circular(8),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3, ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children:[
                                                                                    Container(
                                                                                      width: 7,
                                                                                      height: 7,
                                                                                      decoration: BoxDecoration(
                                                                                        shape: BoxShape.circle,
                                                                                        border: Border.all(color: Colors.black, width: 1, ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned.fill(
                                                                  child: Align(
                                                                    alignment: Alignment.center,
                                                                    child: SizedBox(
                                                                      width: 20,
                                                                      height: 13.75,
                                                                      child: Material(
                                                                        color: Color(0xff315034),
                                                                        borderRadius: BorderRadius.circular(8),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 1.48),
                                                SizedBox(
                                                  width: 463,
                                                  child: Text(
                                                    "Forgot password?",
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                      color: Color(0xff315034),
                                                      fontSize: 16,
                                                      fontFamily: "Poppins",
                                                      fontWeight: FontWeight.w300,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 15.33),
                                          Container(
                                            width: 462,
                                            height: 80,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                SizedBox(
                                                  width: 142.99,
                                                  height: 25.99,
                                                  child: Text(
                                                    "New Password",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xff315034),
                                                      fontSize: 15,
                                                      fontFamily: "Barlow Semi Condensed",
                                                      fontWeight: FontWeight.w500,
                                                      letterSpacing: 0.24,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 462,
                                                  child: Material(
                                                    color: Color(0xffa3e8aa),
                                                    borderRadius: BorderRadius.circular(4),
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12, ),
                                                      child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize: MainAxisSize.max,
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children:[
                                                                Container(
                                                                  width: 16,
                                                                  height: 16,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                  ),
                                                                  child: FlutterLogo(size: 16),
                                                                ),
                                                                SizedBox(width: 8),
                                                                Text(
                                                                  "Enter password",
                                                                  style: TextStyle(
                                                                    color: Color(0xff6f8e6a),
                                                                    fontSize: 20,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(width: 12),
                                                          Container(
                                                            width: 20,
                                                            height: 20,
                                                            child: Stack(
                                                              children:[
                                                                Positioned.fill(
                                                                  child: Align(
                                                                    alignment: Alignment.center,
                                                                    child: Container(
                                                                      width: 16,
                                                                      height: 11,
                                                                      child: Row(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                        children:[
                                                                          SizedBox(
                                                                            width: 16,
                                                                            height: 11,
                                                                            child: Material(
                                                                              color: Color(0x7f7f3a44),
                                                                              shape: RoundedRectangleBorder(
                                                                                side: BorderSide(width: 1, color: Colors.black, ),
                                                                                borderRadius: BorderRadius.circular(8),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3, ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children:[
                                                                                    Container(
                                                                                      width: 7,
                                                                                      height: 7,
                                                                                      decoration: BoxDecoration(
                                                                                        shape: BoxShape.circle,
                                                                                        border: Border.all(color: Colors.black, width: 1, ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned.fill(
                                                                  child: Align(
                                                                    alignment: Alignment.center,
                                                                    child: SizedBox(
                                                                      width: 20,
                                                                      height: 13.75,
                                                                      child: Material(
                                                                        color: Color(0xff315034),
                                                                        borderRadius: BorderRadius.circular(8),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 15.33),
                                          SizedBox(
                                            width: 245,
                                            height: 52,
                                            child: Material(
                                              color: Color(0xff315034),
                                              elevation: 4,
                                              borderRadius: BorderRadius.circular(4),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8, ),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children:[
                                                    Text(
                                                      "Change Password",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Color(0xffd4ead1),
                                                        fontSize: 24,
                                                        fontFamily: "Poppins",
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
            ],
          )
        ),
      ),
    );
  }
}
