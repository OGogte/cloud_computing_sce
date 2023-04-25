import 'package:flutter/material.dart';
import 'package:insighttrack/utils/color_constant.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({Key? key, this.prefix, this.title, this.suffix})
      : super(key: key);
  Widget? prefix = Container(), title = Container();
  Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: ColorConstant.bgLight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              prefix ?? Container(),
              SizedBox(
                width: 8,
              ),
              title ?? Container()
            ],
          ),
          suffix ??
              (IconButton(
                  onPressed: () {

                  },
                  icon: Icon(
                    Icons.menu,
                    color: Theme.of(context).textTheme.titleLarge!.color,
                  )))
        ],
      ),
    );
  }
}
