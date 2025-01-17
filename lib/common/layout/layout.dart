import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pharmabros/common/component/search_text_form_field.dart';
import 'package:pharmabros/common/const/color.dart';
import 'package:pharmabros/common/const/typography.dart';
import 'package:pharmabros/home/view_model/home_api_view_model.dart';
import 'package:pharmabros/home/view_model/home_search_text_view_model.dart';

class Layout extends ConsumerWidget {
  final Color? backgroundColor;
  final Widget child;
  final String? title;
  final bool centerTitle;
  final Widget? bottomNavigationBar;
  final bool needBackButton;
  final bool resizeToAvoidBottomInset;

  const Layout({
    this.backgroundColor,
    required this.child,
    this.title,
    this.centerTitle = false,
    this.bottomNavigationBar,
    this.needBackButton = false,
    this.resizeToAvoidBottomInset = false,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: Colors.white,
      appBar: defaultAppBar(context,ref),
      body: child,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  AppBar? defaultAppBar(
      BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
      toolbarHeight: 54.w,
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      leading: !needBackButton
          ? null
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 24.w,
                  ),
                ),
              ],
            ),
      title: title == null
          ? SizedBox(
              height: 38.w,
              child: SearchTextFormField(
                onSubmitted: (text) {
                  ref
                      .read(searchTextProvider.notifier)
                      .state = text;
                  ref.read(homeApiProvider.notifier).search(text);
                },
              ),
            )
          : centerTitle == true
              ? Text(
                  title!,
                  style: headerText3,
                )
              : Row(
                  children: [
                    Text(
                      title!,
                      style: headerText3,
                    ),
                  ],
                ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: diverColor1,
          height: 1.0,
        ),
      ),
    );
  }
}
