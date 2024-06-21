import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmabros/common/const/color.dart';

class SearchTextFormField extends StatefulWidget {
  final void Function(String) onSubmitted;

  const SearchTextFormField({
    required this.onSubmitted,
    super.key,
  });

  @override
  State<SearchTextFormField> createState() => _SearchTextFormFieldState();
}

class _SearchTextFormFieldState extends State<SearchTextFormField> {
  late FocusNode focusNode;
  late TextEditingController controller;
  double borderRadius = 8.0;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    focusNode.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      textAlignVertical: TextAlignVertical.center,
      onFieldSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.w),
        suffixIcon: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            controller.clear();
          },
          child: Padding(
            padding: EdgeInsets.only(top: 12.w, bottom: 12.w, left: 12.w),
            child: SvgPicture.asset(
              'asset/svg/x.svg',
              color: buttonColor3,
            ),
          ),
        ),
        suffixIconColor: mainColor1,
        filled: true,
        fillColor: mainColor1,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: mainColor1),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: mainColor1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: mainColor1),
        ),
      ),
      maxLines: 1,
    );
  }
}
