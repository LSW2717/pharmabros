import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Layout extends StatelessWidget {
  final Color? backgroundColor;
  final Widget child;
  final String? title;
  final Widget? bottomNavigationBar;
  final bool needBackButton;
  final bool resizeToAvoidBottomInset;

  const Layout({
    this.backgroundColor,
    required this.child,
    this.title,
    this.bottomNavigationBar,
    this.needBackButton = false,
    this.resizeToAvoidBottomInset = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: Colors.white,
      appBar: defaultAppBar(context),
      body: child,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  AppBar? defaultAppBar(BuildContext context){
    return AppBar(
      toolbarHeight: 54.w,
      automaticallyImplyLeading: true,
      title: title == null ? null : Text(title!),
    );
  }
}
