import 'package:insighttrack/utils/image_constant.dart';
import 'package:insighttrack/utils/size_utils.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:flutter/material.dart';

import 'home_page_final.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}
const primaryColor = Color(0xFF315034);
const canvasColor = Color(0xFF3A5E3E);
const scaffoldBackgroundColor = Color(0xFF6F8E6A);
class _HomePage2State extends State<HomePage2> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(
          builder: (context) {
            final isSmallScreen = MediaQuery.of(context).size.width < 600;
            return Scaffold(
                key: _key,
                appBar: isSmallScreen ? AppBar(
                  title: Text('SideBarX Example'),
                  leading: IconButton(
                    onPressed: (){
                      _key.currentState?.openDrawer();
                    },
                    icon: Icon(Icons.menu),
                  ),
                ): null,
                drawer: SideBarXExample(controller: _controller,),
                body: Row(
                  children: [
                    if(!isSmallScreen) SideBarXExample(controller: _controller),
                    Expanded(child: Center(child: AnimatedBuilder(
                      animation: _controller,
                      builder: (context,child){
                        switch(_controller.selectedIndex){
                          case 0: _key.currentState?.closeDrawer();
                          return HomePage3();
                          case 1: _key.currentState?.closeDrawer();
                          return Center(
                            child: Text('Search',style: TextStyle(color: Colors.white,fontSize: 40),),
                          );
                          case 2: _key.currentState?.closeDrawer();
                          return Center(
                            child: Text('Settings',style: TextStyle(color: Colors.white,fontSize: 40),),
                          );
                          case 3: _key.currentState?.closeDrawer();
                          return Center(
                            child: Text('Theme',style: TextStyle(color: Colors.white,fontSize: 40),),
                          );
                          default:
                            return HomePage3();/*Center(
                              child: Text('Home',style: TextStyle(color: Colors.white,fontSize: 40),),
                            );*/
                        }
                      },
                    ),))
                  ],
                )
            );
          }
      ),
    );
  }
}

class SideBarXExample extends StatelessWidget {
  const SideBarXExample({Key? key, required SidebarXController controller}) : _controller = controller,super(key: key);
  final SidebarXController _controller;
  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme:  const SidebarXTheme(
        decoration: BoxDecoration(
            color: canvasColor,
            //borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        selectedTextStyle: const TextStyle(color: Colors.white),
        hoverColor: Colors.white
      ),
      extendedTheme: const SidebarXTheme(
          width: 250
      ),
      footerDivider: Divider(color:  Colors.white.withOpacity(0.8), height: 1),
      headerBuilder: (context,extended){
        return SizedBox(
          height: 100,
          child: _controller.extended?Padding(padding:getPadding(all: 10),child: Image.asset(ImageConstant.imgLogo,)):Padding(
            padding: getPadding(all: 10),
            child: Image.asset('images/logo_vector.png',),
          )/*Icon(Icons.person,size: 60,color: Colors.white,),*/
        );
      },
      items: const [
        SidebarXItem(iconWidget: Icon(Icons.home,color: Colors.white,), label: '  Home',),
        SidebarXItem(iconWidget: Icon(Icons.analytics,color: Colors.white,), label: '  Analytics'),
        SidebarXItem(iconWidget: Icon(Icons.settings,color: Colors.white,), label: '  KPI\'s'),
        SidebarXItem(iconWidget: Icon(Icons.person,color: Colors.white,), label: '  Profile'),
      ],
    );
  }
}
