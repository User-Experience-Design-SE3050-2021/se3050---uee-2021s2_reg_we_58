import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final String title;
  // final Color backgroundColor;

  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: Colors.transparent,
      elevation: 3.0,
      title: Text(
        'Trains Sri Lanka',
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: kPrimaryColor),
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: kPrimaryColor),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: const Color(0xFFFFFFFF)),
      ),
    );
  }
}
